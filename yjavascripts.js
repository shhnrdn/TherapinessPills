const videoCardContainer = document.querySelector(".video-wrapper");

let api_key = "AIzaSyA1YPtGHX-Jlnn8oBJX7LgSPG2vVRdEKIo";
let video_http = "https://www.googleapis.com/youtube/v3/videos?";
let channel_http = "https://www.googleapis.com/youtube/v3/channels?";

const fetchVideos = (params) => {
    fetch(video_http + new URLSearchParams(params))
        .then((res) => res.json())
        .then((data) => {
            clearVideos();
            data.items.forEach((item) => {
                getChannelIcon(item);
            });
        })
        .catch((err) => console.log("Error fetching videos: ", err));
};

const getChannelIcon = (video_data) => {
    fetch(
        channel_http + new URLSearchParams({
            key: api_key,
            part: "snippet",
            id: video_data.snippet.channelId,
        })
    )
        .then((res) => res.json())
        .then((data) => {
            video_data.channelThumbnail = data.items[0].snippet.thumbnails.default.url;
            makeVideoCard(video_data);
        })
        .catch((err) => console.log("Error fetching channel icon: ", err));
};

const playVideo = (videoId) => {
    console.log("Playing video with ID:", videoId); // Debugging line
    sessionStorage.setItem("videoId", videoId);
    window.location.href = "video-page.html";
};

const makeVideoCard = (data) => {
    const videoCard = document.createElement("div");
    videoCard.classList.add("video");
    videoCard.innerHTML = `
    <div class="video-content">
        <img src="${data.snippet.thumbnails.high.url}" alt="thumbnail" class="thumbnail">
    </div>
    <div class="video-details">
        <div class="channel-logo">
            <img src="${data.channelThumbnail}" alt="" class="channel-icon">
        </div>
        <div class="detail">
            <h3 class="title">${data.snippet.title}</h3>
            <div class="channel-name">${data.snippet.channelTitle}</div>
        </div>
    </div>
    `;
    videoCard.addEventListener("click", () => {
        playVideo(data.id);
    });

    videoCardContainer.appendChild(videoCard);
};

const clearVideos = () => {
    videoCardContainer.innerHTML = '';
};

// Fetch most popular videos on initial load
fetchVideos({
    part: "snippet,contentDetails,statistics,player",
    chart: "mostPopular",
    maxResults: 20,
    regionCode: "MY",
    key: api_key,
});

// Search functionality
const searchButton = document.getElementById('search-button');
const searchInput = document.getElementById('search-input');

searchButton.addEventListener('click', (e) => {
    e.preventDefault();  // Prevent form from submitting
    const query = searchInput.value;
    if (query) {
        searchVideos(query);
    }
});

const searchVideos = (query) => {
    const search_http = "https://www.googleapis.com/youtube/v3/search?";
    fetch(
        search_http + new URLSearchParams({
            key: api_key,
            part: 'snippet',
            q: query,
            maxResults: 20,
            type: 'video',
            regionCode: 'MY'
        })
    )
        .then((res) => res.json())
        .then((data) => {
            clearVideos();
            data.items.forEach((item) => {
                getVideoDetails(item.id.videoId);
            });
        })
        .catch((err) => console.log("Error fetching search results: ", err));


};

const getVideoDetails = (videoId) => {
    fetch(
        video_http + new URLSearchParams({
            part: "snippet, contentDetails, statistics, player",
            id: videoId,
            key: api_key,
        })
    )
        .then((res) => res.json())
        .then((data) => {
            const videoData = data.items[0];
            getChannelIcon(videoData);
        })
        .catch((err) => console.log("Error fetching video details: ", err));
};

// Tag search functionality
const tags = document.querySelectorAll('.tag');
tags.forEach(tag => {
    tag.addEventListener('click', () => {
        const query = tag.textContent.trim();
        searchVideos(query);
    });
});

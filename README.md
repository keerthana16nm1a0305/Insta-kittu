# Insta-kittu
Instagram clone

An Instagram description is a text field that appears below a user's username and profile picture on their Instagram profile. It's an opportunity for the user to share a brief summary about themselves or their brand, express their personality, and provide additional information to their followers.
Instagram descriptions can include a variety of information, such as the user's name, job title, interests, hobbies, location, and contact information. They can also include links to other social media accounts or websites.
Crafting an effective Instagram description can help users attract more followers, showcase their personality or brand, and provide important information to their audience. It's important to keep the description concise and engaging, as users typically only have a few seconds to make an impression.

Instagram features
upload photos
upload reels
we can upload daily activity in insta story
give bio
profile picture
calls and chat with frnds
see frnds profile, reels, videos, chat, bio, profile picture,active status
watch public reels (insta feed)
we can like, share, and comment on frnds pictures and reels 
we share frnds profile to other frnds
create reels and videos 
we can follow or unfollow profiles
we can also block

Architecture
    data
        post - video, user profile name, caption,number of likes, no. of comments, music name, list of comments, location.
        chat box - frnds list, chats, request  msgs,
        chat - previous chats and reels, user name, user id, profile picture,  
        user profile - posts, followers, followings, profile pic, bio, user name, user id,
        comment - profile pic, name, time, description, no. of likes.
        

    fuctionality
        Reels - create, like, comment, share, save, music use, comment like and reply, delete
        user chat list - delete user, mute msg, mute calls
        chat box - delete single or multi msgs, send msg, send or delete images,
        user profile - upload, edit, delete - profile pic, name, bio; follow frnds, unfollow frnds, block, 

    sql relationship
        user to user - friend relationship, block relationship, follow req relation,
        user and post - ownership - like,  
        post and comment - owership
        user and comment - like
        comment to comment - reply
        user to chat - 
    
    UI (Front End)
        Pages
            Home 
            search
            add
            reel
            User profile
            Notification
            Chat
            login
            
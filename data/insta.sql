CREATE TABLE
    User (
        UserName VARCHAR,
        UserID INT,
        ProfileLink VARCHAR ,
        Bio VARCHAR,
        PostId INT,
        FollowerID INT,
        BlockUserID INT,
        FriendID INT,
        PRIMARY KEY (UserID)
        FOREIGN KEY (PostId) REFERENCES Post(PostId)
        FOREIGN KEY (FollowerID) REFERENCES User(UserID)
        FOREIGN KEY (BlockUserID) REFERENCES User(UserID)
        FOREIGN KEY (FriendID) REFERENCES User(UserID) 



    );
CREATE TABLE
    Post (
        PostId INT,
        UserProfileName VARCHAR,
        caption VARCHAR,
        NumberOfLikes INT,
        NoOfComments INT,
        MusicName VARCHAR,
        Location VARCHAR,
        OwnerId INT,
        LikedUserId INT,
        PRIMARY KEY (PostId)
        FOREIGN KEY (OwnerId) REFERENCES User(UserID)
        FOREIGN KEY (LikedUserId) REFERENCES User(UserID)   
    );
CREATE TABLE
    Comment (
        CommentId INT,
        Name VARCHAR, 
        Time DATE, 
        Description VARCHAR, 
        NoOfLikes INT,
        PostOwnerId INT,
        UserLikeId INT,
        CommentReplyId INT,
        PRIMARY KEY (CommentId)
        FOREIGN KEY (PostOwnerId) REFERENCES User(UserID)
        FOREIGN KEY (UserLikeId) REFERENCES User(UserID)
        FOREIGN KEY (CommentReplyId) REFERENCES Comment(CommentID)  

    
    );

CREATE TABLE
    Chat (
        UserId1 INT,
        UserId2 INT,
        ChatId INT,
        Time DATE,
        Description VARCHAR,
        PRIMARY KEY (ChatId)
        FOREIGN KEY (UserId1) REFERENCES User(UserID)
        FOREIGN KEY (UserId2) REFERENCES User(UserID) 
    );

-- CREATE TABLE
--     Chat (
--         UserId1 INT,
--         UserId2 INT,
--         ChatId INT,
--         Time DATE,
--         Description VARCHAR,
--         PRIMARY KEY (UserId1,UserId2)
--     );
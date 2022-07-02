.class public Lcom/android/systemui/media/SecQSMediaPlayerData;
.super Ljava/lang/Object;
.source "SecQSMediaPlayerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/SecQSMediaPlayerData$MediaBluetoothHelper;
    }
.end annotation


# instance fields
.field private isADPProfileConnected:Z

.field private mFirstPageView:Lcom/android/systemui/media/SecMediaControlPanel;

.field private mLastPageView:Lcom/android/systemui/media/SecMediaControlPanel;

.field private mMediaBluetoothHelper:Lcom/android/systemui/media/SecQSMediaPlayerData$MediaBluetoothHelper;

.field private mMediaData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/media/SecMediaControlPanel;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaPlayer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/SecMediaControlPanel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaPlayer:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/media/SecQSMediaPlayerData;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->isADPProfileConnected:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/media/SecQSMediaPlayerData;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->isADPProfileConnected:Z

    return p1
.end method


# virtual methods
.method public addMediaData(Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMediaList(ILcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addMediaList(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaPlayer:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createMediaBluetoothHelper(Landroid/content/Context;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaBluetoothHelper:Lcom/android/systemui/media/SecQSMediaPlayerData$MediaBluetoothHelper;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/android/systemui/media/SecQSMediaPlayerData$MediaBluetoothHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/SecQSMediaPlayerData$MediaBluetoothHelper;-><init>(Lcom/android/systemui/media/SecQSMediaPlayerData;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaBluetoothHelper:Lcom/android/systemui/media/SecQSMediaPlayerData$MediaBluetoothHelper;

    :cond_0
    return-void
.end method

.method public getFirstPageView()Lcom/android/systemui/media/SecMediaControlPanel;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mFirstPageView:Lcom/android/systemui/media/SecMediaControlPanel;

    return-object p0
.end method

.method public getLastPageView()Lcom/android/systemui/media/SecMediaControlPanel;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mLastPageView:Lcom/android/systemui/media/SecMediaControlPanel;

    return-object p0
.end method

.method public getMediaData()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaData;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaData:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public getMediaDataSize()I
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    return p0
.end method

.method public getMediaList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/media/SecMediaControlPanel;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getMediaListSize()I
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getMediaPlayer()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/SecMediaControlPanel;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaPlayer:Ljava/util/HashMap;

    return-object p0
.end method

.method public getMediaPlayerSize()I
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaPlayer:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    return p0
.end method

.method public isDualPlayMode()Z
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaBluetoothHelper:Lcom/android/systemui/media/SecQSMediaPlayerData$MediaBluetoothHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/media/SecQSMediaPlayerData$MediaBluetoothHelper;->isDualPlayMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeMediaData(Ljava/lang/String;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeMediaList(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/SecMediaControlPanel;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mMediaPlayer:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/SecMediaControlPanel;

    return-object p0
.end method

.method public setFirstPageView(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mFirstPageView:Lcom/android/systemui/media/SecMediaControlPanel;

    return-void
.end method

.method public setLastPageView(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/systemui/media/SecQSMediaPlayerData;->mLastPageView:Lcom/android/systemui/media/SecMediaControlPanel;

    return-void
.end method

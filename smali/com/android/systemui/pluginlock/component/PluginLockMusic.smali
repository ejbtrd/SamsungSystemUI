.class public Lcom/android/systemui/pluginlock/component/PluginLockMusic;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "PluginLockMusic.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginLockMusic"


# instance fields
.field private mIsLandscapeAvailable:Z

.field private mIsPortraitAvailable:Z

.field private mMusicGravity:I

.field private mMusicGravityLand:I

.field private mMusicPaddingEnd:I

.field private mMusicPaddingEndLand:I

.field private mMusicPaddingStart:I

.field private mMusicPaddingStartLand:I

.field private mMusicPaddingTop:I

.field private mMusicPaddingTopLand:I

.field private mMusicVisibility:I

.field private mMusicVisibilityLand:I

.field private mStateListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTop:I

    .line 19
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStart:I

    .line 20
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEnd:I

    const/4 p2, 0x0

    .line 21
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibility:I

    const/16 v0, 0x11

    .line 22
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravity:I

    .line 25
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTopLand:I

    .line 26
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStartLand:I

    .line 27
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEndLand:I

    .line 28
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibilityLand:I

    .line 29
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravityLand:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 0

    .line 40
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getTopY()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTop:I

    .line 41
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getPaddingStart()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStart:I

    .line 42
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getPaddingEnd()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEnd:I

    .line 43
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getVisibility()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibility:I

    .line 44
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getGravity()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravity:I

    .line 45
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getTopYLand()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTopLand:I

    .line 46
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getPaddingStartLand()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStartLand:I

    .line 47
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getPaddingEndLand()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEndLand:I

    .line 48
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getVisibilityLand()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibilityLand:I

    .line 49
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getGravityLand()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravityLand:I

    .line 51
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isPortraitAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mIsPortraitAvailable:Z

    .line 52
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isLandscapeAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mIsLandscapeAvailable:Z

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->loadMusicData()V

    return-void
.end method

.method public loadMusicData()V
    .locals 5

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTop:I

    const-string v2, "key_music_top_padding"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibility:I

    const-string v2, "key_music_visibility"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStart:I

    const-string v2, "key_music_start_padding"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEnd:I

    const-string v2, "key_music_end_padding"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravity:I

    const-string v2, "key_music_gravity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTopLand:I

    const-string v2, "key_music_top_padding_land"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibilityLand:I

    const-string v2, "key_music_visibility_land"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStartLand:I

    const-string v2, "key_music_start_padding_land"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEndLand:I

    const-string v2, "key_music_end_padding_land"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravityLand:I

    const-string v2, "key_music_gravity_land"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mIsPortraitAvailable:Z

    const-string v2, "key_music_available"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mIsLandscapeAvailable:Z

    const-string v2, "key_music_available_land"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMusicData bundle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "PluginLockMusic"

    invoke-static {v4, v1, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v1, :cond_0

    .line 81
    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onMusicChanged(Landroid/os/Bundle;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public recover()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->reset(Z)V

    return-void
.end method

.method public registerStateCallback(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;",
            ">;>;)V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mStateListenerList:Ljava/util/List;

    return-void
.end method

.method public reset(Z)V
    .locals 1

    const/4 p1, -0x1

    .line 100
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTop:I

    .line 101
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStart:I

    .line 102
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEnd:I

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibility:I

    .line 104
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTopLand:I

    .line 105
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStartLand:I

    .line 106
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEndLand:I

    .line 107
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibilityLand:I

    const/16 p1, 0x11

    .line 108
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravityLand:I

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->loadMusicData()V

    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 0

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    return-void
.end method

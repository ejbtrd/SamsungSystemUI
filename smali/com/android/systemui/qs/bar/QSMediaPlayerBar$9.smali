.class Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;
.super Ljava/lang/Object;
.source "QSMediaPlayerBar.java"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/QSMediaPlayerBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V
    .locals 0

    .line 1063
    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;ZZ)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/media/MediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1066
    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getSong()Ljava/lang/CharSequence;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 1067
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p5

    const/4 v0, 0x5

    if-le p5, v0, :cond_0

    const/4 p5, 0x0

    const/4 v0, 0x4

    .line 1068
    invoke-interface {p4, p5, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p4

    :cond_0
    move-object v3, p4

    .line 1070
    iget-object p4, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p4}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2400(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/media/MediaLogger;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getActive()Z

    move-result v4

    const/16 p4, 0xa

    const-string p5, "  "

    invoke-static {p4, p5}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/media/MediaLogger;->logMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;)V

    if-eqz p2, :cond_1

    .line 1073
    iget-object p4, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p4}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/media/SecQSMediaPlayerData;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p4

    monitor-enter p4

    .line 1074
    :try_start_0
    iget-object p5, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p5}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/media/SecQSMediaPlayerData;

    move-result-object p5

    invoke-virtual {p5, p2}, Lcom/android/systemui/media/SecQSMediaPlayerData;->removeMediaData(Ljava/lang/String;)V

    .line 1075
    monitor-exit p4

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1077
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getActive()Z

    move-result p4

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    iget-object p4, p4, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/android/systemui/util/Utils;->useMediaResumption(Landroid/content/Context;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 1081
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->onMediaDataRemoved(Ljava/lang/String;)V

    goto :goto_1

    .line 1083
    :cond_2
    iget-object p4, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p4}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/media/SecQSMediaPlayerData;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p4

    monitor-enter p4

    .line 1084
    :try_start_1
    iget-object p5, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p5}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/media/SecQSMediaPlayerData;

    move-result-object p5

    invoke-virtual {p5, p1, p3}, Lcom/android/systemui/media/SecQSMediaPlayerData;->addMediaData(Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    .line 1085
    iget-object p5, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p5, p1, p2, p3}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2500(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    .line 1086
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1089
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/media/SecQSMediaPlayerData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaListSize()I

    move-result p1

    if-lez p1, :cond_3

    .line 1090
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->showBar(Z)V

    .line 1091
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2000(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    .line 1092
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2100(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    .line 1094
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarItem$Callback;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/android/systemui/qs/bar/BarItem$Callback;->onBarHeightChanged()V

    :cond_4
    return-void

    :catchall_1
    move-exception p0

    .line 1086
    :try_start_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public onMediaDataRemoved(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1104
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/media/SecQSMediaPlayerData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    monitor-enter v0

    .line 1105
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/media/SecQSMediaPlayerData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->removeMediaData(Ljava/lang/String;)V

    .line 1106
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {v1, p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2600(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;Ljava/lang/String;)V

    .line 1107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/media/SecQSMediaPlayerData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaDataSize()I

    move-result p1

    if-nez p1, :cond_0

    .line 1112
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2700()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2600(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;Ljava/lang/String;)V

    .line 1113
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2800()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2600(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;Ljava/lang/String;)V

    .line 1114
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->showBar(Z)V

    .line 1115
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1100(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$MediaPanelVisibilityListener;

    .line 1116
    invoke-interface {v1, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$MediaPanelVisibilityListener;->onMediaVisibilityChanged(Z)V

    goto :goto_0

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, p1, :cond_1

    .line 1122
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$3000(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;IZ)V

    .line 1124
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2100(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    .line 1125
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2200(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/qs/SecPageIndicator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1300(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;Z)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 1126
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2200(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/qs/SecPageIndicator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->reset(I)V

    .line 1128
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2000(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    .line 1129
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarItem$Callback;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/systemui/qs/bar/BarItem$Callback;->onBarHeightChanged()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 1107
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/media/SmartspaceMediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

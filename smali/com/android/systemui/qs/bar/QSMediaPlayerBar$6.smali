.class Lcom/android/systemui/qs/bar/QSMediaPlayerBar$6;
.super Ljava/lang/Object;
.source "QSMediaPlayerBar.java"

# interfaces
.implements Lcom/android/systemui/media/SecMediaControlPanel$QSMediaPlayerBarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
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

    .line 398
    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$6;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IsBluetoothDualPlayMode()Z
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$6;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/media/SecQSMediaPlayerData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->isDualPlayMode()Z

    move-result p0

    return p0
.end method

.method public remove(Ljava/lang/String;Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 1

    .line 406
    iget-object p2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$6;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1000(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/media/MediaDataManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/media/MediaDataManager;->onMediaDataRemoved(Ljava/lang/String;)V

    .line 407
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$6;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/media/SecQSMediaPlayerData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaListSize()I

    move-result p1

    if-gtz p1, :cond_1

    .line 408
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$6;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->showBar(Z)V

    .line 409
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$6;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1100(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$MediaPanelVisibilityListener;

    .line 410
    invoke-interface {v0, p2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$MediaPanelVisibilityListener;->onMediaVisibilityChanged(Z)V

    goto :goto_0

    .line 412
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$6;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarItem$Callback;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/qs/bar/BarItem$Callback;->onBarHeightChanged()V

    :cond_1
    return-void
.end method

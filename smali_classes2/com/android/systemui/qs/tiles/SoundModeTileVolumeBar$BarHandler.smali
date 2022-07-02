.class public final Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;
.super Landroid/os/Handler;
.source "SoundModeTileVolumeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "BarHandler"
.end annotation


# instance fields
.field protected mCountFreePass:I

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    .line 323
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 320
    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->mCountFreePass:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 328
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->switchOperator(I)V

    return-void
.end method

.method public sendNewMessage(I)V
    .locals 1

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->sendNewMessage(IZ)V

    return-void
.end method

.method public sendNewMessage(IZ)V
    .locals 2

    .line 347
    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->mCountFreePass:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    if-eqz p2, :cond_1

    .line 348
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->switchOperator(I)V

    const/4 p2, 0x0

    .line 349
    iput p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->mCountFreePass:I

    .line 351
    :cond_1
    iget p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->mCountFreePass:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->mCountFreePass:I

    .line 352
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 353
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected switchOperator(I)V
    .locals 1

    const/16 v0, 0xd9c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->handleUpdateBarViews()V

    .line 335
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->handleUpdateDualColorSeekbar()V

    :goto_0
    return-void
.end method

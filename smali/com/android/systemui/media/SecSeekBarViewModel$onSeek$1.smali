.class final Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;
.super Ljava/lang/Object;
.source "SecSeekBarViewModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/SecSeekBarViewModel;->onSeek(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $position:J

.field final synthetic this$0:Lcom/android/systemui/media/SecSeekBarViewModel;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    iput-wide p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->$position:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-static {v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$isFalseSeek$p(Lcom/android/systemui/media/SecSeekBarViewModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-static {v0, v1}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$setScrubbing(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V

    .line 178
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-static {p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$checkPlaybackPosition(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    goto :goto_1

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-static {v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$getController$p(Lcom/android/systemui/media/SecSeekBarViewModel;)Landroid/media/session/MediaController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->$position:J

    invoke-virtual {v0, v2, v3}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$setPlaybackState$p(Lcom/android/systemui/media/SecSeekBarViewModel;Landroid/media/session/PlaybackState;)V

    .line 187
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-static {p0, v1}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$setScrubbing(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V

    :goto_1
    return-void
.end method

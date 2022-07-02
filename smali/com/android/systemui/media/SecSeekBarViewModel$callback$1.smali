.class public final Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;
.super Landroid/media/session/MediaController$Callback;
.source "SecSeekBarViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/SecSeekBarViewModel;-><init>(Lcom/android/systemui/util/concurrency/RepeatableExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/SecSeekBarViewModel;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 98
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1
    .param p1    # Landroid/media/session/PlaybackState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 100
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-static {v0, p1}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$setPlaybackState$p(Lcom/android/systemui/media/SecSeekBarViewModel;Landroid/media/session/PlaybackState;)V

    .line 101
    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-static {p1}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$getPlaybackState$p(Lcom/android/systemui/media/SecSeekBarViewModel;)Landroid/media/session/PlaybackState;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-static {v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$getPlaybackState$p(Lcom/android/systemui/media/SecSeekBarViewModel;)Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-static {p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$checkIfPollingNeeded(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->clearController()V

    :goto_1
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->clearController()V

    return-void
.end method

.class final Lcom/android/systemui/media/SecSeekBarViewModel$onDestroy$1;
.super Ljava/lang/Object;
.source "SecSeekBarViewModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/SecSeekBarViewModel;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/SecSeekBarViewModel;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$setController(Lcom/android/systemui/media/SecSeekBarViewModel;Landroid/media/session/MediaController;)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-static {v0, v1}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$setPlaybackState$p(Lcom/android/systemui/media/SecSeekBarViewModel;Landroid/media/session/PlaybackState;)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-static {v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$getCancel$p(Lcom/android/systemui/media/SecSeekBarViewModel;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 232
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-static {p0, v1}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$setCancel$p(Lcom/android/systemui/media/SecSeekBarViewModel;Ljava/lang/Runnable;)V

    return-void
.end method

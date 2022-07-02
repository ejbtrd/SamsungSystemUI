.class final Lcom/android/systemui/media/SecSeekBarViewModel$onSeekStarting$1;
.super Ljava/lang/Object;
.source "SecSeekBarViewModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/SecSeekBarViewModel;->onSeekStarting()V
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

    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekStarting$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekStarting$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$setScrubbing(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V

    .line 146
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekStarting$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$setFalseSeek$p(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V

    return-void
.end method

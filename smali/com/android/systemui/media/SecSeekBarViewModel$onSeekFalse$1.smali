.class final Lcom/android/systemui/media/SecSeekBarViewModel$onSeekFalse$1;
.super Ljava/lang/Object;
.source "SecSeekBarViewModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/SecSeekBarViewModel;->onSeekFalse()V
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

    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekFalse$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekFalse$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-static {v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$getScrubbing$p(Lcom/android/systemui/media/SecSeekBarViewModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekFalse$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$setFalseSeek$p(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V

    :cond_0
    return-void
.end method

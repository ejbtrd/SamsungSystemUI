.class final Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;
.super Ljava/lang/Object;
.source "SecSeekBarViewModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/SecSeekBarViewModel;->onSeekProgress(J)V
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

    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    iput-wide p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->$position:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 155
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-static {v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$getScrubbing$p(Lcom/android/systemui/media/SecSeekBarViewModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-static {v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$get_data$p(Lcom/android/systemui/media/SecSeekBarViewModel;)Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->$position:J

    long-to-int p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;ZZLjava/lang/Integer;IILjava/lang/Object;)Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$set_data(Lcom/android/systemui/media/SecSeekBarViewModel;Lcom/android/systemui/media/SecSeekBarViewModel$Progress;)V

    :cond_0
    return-void
.end method

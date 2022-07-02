.class final Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$TypeRunnable;
.super Ljava/lang/Object;
.source "LooperSlowLogController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeRunnable"
.end annotation


# instance fields
.field private final controller:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final type:I


# direct methods
.method public constructor <init>(ILcom/android/systemui/uithreadmonitor/LooperSlowLogController;)V
    .locals 1
    .param p2    # Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$TypeRunnable;->type:I

    .line 160
    iput-object p2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$TypeRunnable;->controller:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$TypeRunnable;->controller:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    iget p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$TypeRunnable;->type:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->disable(I)Z

    return-void
.end method

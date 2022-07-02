.class final Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$debugCallback$1;
.super Ljava/lang/Object;
.source "LooperSlowLogController.kt"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Looper;Lcom/android/systemui/dump/DumpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;


# direct methods
.method constructor <init>(Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$debugCallback$1;->this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$debugCallback$1;->accept(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 39
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$debugCallback$1;->this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "u"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->access$updateSlowDispatchOnChoreographer(Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

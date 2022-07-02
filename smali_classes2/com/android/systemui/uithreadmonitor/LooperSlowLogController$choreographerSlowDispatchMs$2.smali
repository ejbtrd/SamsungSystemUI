.class final Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$choreographerSlowDispatchMs$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LooperSlowLogController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$choreographerSlowDispatchMs$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$choreographerSlowDispatchMs$2;

    invoke-direct {v0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$choreographerSlowDispatchMs$2;-><init>()V

    sput-object v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$choreographerSlowDispatchMs$2;->INSTANCE:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$choreographerSlowDispatchMs$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 1

    const-string p0, "debug.sysui.looper_slow.choreographer.slow_dispatch"

    const/16 v0, 0x1e

    .line 43
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$choreographerSlowDispatchMs$2;->invoke()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

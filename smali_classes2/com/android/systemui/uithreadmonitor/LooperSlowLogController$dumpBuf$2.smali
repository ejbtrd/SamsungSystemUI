.class final Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$dumpBuf$2;
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
        "Lkotlin/collections/ArrayDeque<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$dumpBuf$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$dumpBuf$2;

    invoke-direct {v0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$dumpBuf$2;-><init>()V

    sput-object v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$dumpBuf$2;->INSTANCE:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$dumpBuf$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$dumpBuf$2;->invoke()Lkotlin/collections/ArrayDeque;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lkotlin/collections/ArrayDeque;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    new-instance p0, Lkotlin/collections/ArrayDeque;

    invoke-direct {p0}, Lkotlin/collections/ArrayDeque;-><init>()V

    return-object p0
.end method

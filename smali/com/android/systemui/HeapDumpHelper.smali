.class public Lcom/android/systemui/HeapDumpHelper;
.super Ljava/lang/Object;
.source "HeapDumpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/HeapDumpHelper$FileManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HeapDumpHelper"


# instance fields
.field private isDumpped:Z

.field private mBgHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$38KmuboR-YnaHtPDaAnvymJudwo(Lcom/android/systemui/HeapDumpHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/HeapDumpHelper;->lambda$dumpHeap$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/android/systemui/HeapDumpHelper;->isDumpped:Z

    .line 34
    iput-object p1, p0, Lcom/android/systemui/HeapDumpHelper;->mBgHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$dumpHeap$0()V
    .locals 4

    const-string v0, "/data/log/core/"

    .line 57
    :try_start_0
    new-instance v1, Lcom/android/systemui/HeapDumpHelper$FileManager;

    invoke-direct {v1, v0}, Lcom/android/systemui/HeapDumpHelper$FileManager;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Lcom/android/systemui/HeapDumpHelper$FileManager;->deleteOldHeap()V

    .line 60
    invoke-static {v1}, Lcom/android/systemui/HeapDumpHelper$FileManager;->access$000(Lcom/android/systemui/HeapDumpHelper$FileManager;)Ljava/lang/String;

    move-result-object v1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/HeapDumpHelper;->isDumpped:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    sget-object v1, Lcom/android/systemui/HeapDumpHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/android/systemui/HeapDumpHelper;->isDumpped:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public dumpHeap()V
    .locals 2

    .line 52
    sget-boolean v0, Lcom/android/systemui/BasicRune;->ENHANCEMENT_HEAP_DUMP_HELPER:Z

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/HeapDumpHelper;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/HeapDumpHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/HeapDumpHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/HeapDumpHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isAlreadyDump()Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/android/systemui/HeapDumpHelper;->isDumpped:Z

    return p0
.end method

.method public isLeakSuspect(Landroid/os/Debug$MemoryInfo;)Z
    .locals 1

    const-string/jumbo v0, "summary.java-heap"

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x37000

    if-ge p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/HeapDumpHelper;->isAlreadyDump()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

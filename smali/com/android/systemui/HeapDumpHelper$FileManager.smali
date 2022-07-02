.class Lcom/android/systemui/HeapDumpHelper$FileManager;
.super Ljava/lang/Object;
.source "HeapDumpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/HeapDumpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileManager"
.end annotation


# instance fields
.field private mHeapDumpDir:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$4TKeEGypYi_Oe0AmGVzqFglgeBY(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/HeapDumpHelper$FileManager;->lambda$deleteOldHeap$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/HeapDumpHelper$FileManager;->mHeapDumpDir:Ljava/io/File;

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/HeapDumpHelper$FileManager;->mHeapDumpDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/HeapDumpHelper$FileManager;)Ljava/lang/String;
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/HeapDumpHelper$FileManager;->generateFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private generateFileName()Ljava/lang/String;
    .locals 2

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "heap-systemui"

    aput-object v1, p0, v0

    .line 97
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 98
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "%s_%d_%s.hprof"

    .line 97
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$deleteOldHeap$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "heap-systemui"

    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public deleteOldHeap()V
    .locals 3

    .line 86
    iget-object p0, p0, Lcom/android/systemui/HeapDumpHelper$FileManager;->mHeapDumpDir:Ljava/io/File;

    sget-object v0, Lcom/android/systemui/HeapDumpHelper$FileManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/HeapDumpHelper$FileManager$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    .line 87
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 88
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

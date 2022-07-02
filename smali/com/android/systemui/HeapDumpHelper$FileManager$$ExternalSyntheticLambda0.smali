.class public final synthetic Lcom/android/systemui/HeapDumpHelper$FileManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/HeapDumpHelper$FileManager$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/HeapDumpHelper$FileManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/HeapDumpHelper$FileManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/systemui/HeapDumpHelper$FileManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/HeapDumpHelper$FileManager$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/systemui/HeapDumpHelper$FileManager;->$r8$lambda$4TKeEGypYi_Oe0AmGVzqFglgeBY(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

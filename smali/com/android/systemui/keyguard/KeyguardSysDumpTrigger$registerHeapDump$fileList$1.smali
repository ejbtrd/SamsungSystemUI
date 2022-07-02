.class final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$registerHeapDump$fileList$1;
.super Ljava/lang/Object;
.source "KeyguardSysDumpTrigger.kt"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->registerHeapDump(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$registerHeapDump$fileList$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$registerHeapDump$fileList$1;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$registerHeapDump$fileList$1;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$registerHeapDump$fileList$1;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$registerHeapDump$fileList$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    const-string p0, "name"

    .line 268
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "hprof"

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p0, p1, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.android.systemui"

    invoke-static {p2, p0, p1, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.class public final Lcom/android/systemui/uiautomator/ApiLogger;
.super Ljava/lang/Object;
.source "ApiLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApiLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiLogger.kt\ncom/android/systemui/uiautomator/ApiLogger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n1711#2,3:47\n*E\n*S KotlinDebug\n*F\n+ 1 ApiLogger.kt\ncom/android/systemui/uiautomator/ApiLogger\n*L\n34#1,3:47\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/uiautomator/ApiLogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/uiautomator/ApiInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/uiautomator/ApiLogger;

    invoke-direct {v0}, Lcom/android/systemui/uiautomator/ApiLogger;-><init>()V

    sput-object v0, Lcom/android/systemui/uiautomator/ApiLogger;->INSTANCE:Lcom/android/systemui/uiautomator/ApiLogger;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/uiautomator/ApiLogger;->list:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 44
    sget-object p0, Lcom/android/systemui/uiautomator/ApiLogger;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final isLogged(Ljava/lang/String;J)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "api"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object p0, Lcom/android/systemui/uiautomator/ApiLogger;->list:Ljava/util/List;

    .line 1711
    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    goto :goto_1

    .line 1712
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/uiautomator/ApiInfo;

    .line 35
    invoke-virtual {v0}, Lcom/android/systemui/uiautomator/ApiInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/uiautomator/ApiInfo;->getTimestamp()J

    move-result-wide v3

    cmp-long v0, v3, p2

    if-ltz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    return v1
.end method

.method public final toJson()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 40
    new-instance p0, Lcom/android/systemui/uiautomator/utils/GsonWrapper;

    invoke-direct {p0}, Lcom/android/systemui/uiautomator/utils/GsonWrapper;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/uiautomator/utils/GsonWrapper;->create()Lcom/google/gson/Gson;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/uiautomator/ApiLogger;->list:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "GsonWrapper().create().toJson(list)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

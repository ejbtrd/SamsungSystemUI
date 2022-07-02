.class public Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;
.super Ljava/lang/Object;
.source "EffectServiceCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$IOnEffectServiceChangedListener;
    }
.end annotation


# static fields
.field private static final EDGE_LIGHTING_PLUS_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "EffectServiceCollector"

.field private static mInstance:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDownloadStyleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mELPRunnable:Ljava/lang/Runnable;

.field private final mEdgeLightingStyleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final mElpStyleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIOnEffectServiceChangedListener:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$IOnEffectServiceChangedListener;

.field private mResolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.systemui.notilus.NotiCenterContentProvider/edgelighting_plus_effect"

    .line 55
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->EDGE_LIGHTING_PLUS_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mDownloadStyleList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mElpStyleList:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$1;-><init>(Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mRunnable:Ljava/lang/Runnable;

    .line 84
    new-instance v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$2;-><init>(Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mELPRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->updateEdgeLightingEffect()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->updateEdgeLightingELPEffect()V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;
    .locals 1

    .line 96
    sget-object v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mInstance:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    invoke-direct {v0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;-><init>()V

    sput-object v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mInstance:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    .line 99
    :cond_0
    sget-object v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mInstance:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    return-object v0
.end method

.method private updateEdgeLightingELPEffect()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mElpStyleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 322
    invoke-interface {v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportEffect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mIOnEffectServiceChangedListener:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$IOnEffectServiceChangedListener;

    if-eqz p0, :cond_2

    .line 328
    invoke-interface {p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$IOnEffectServiceChangedListener;->onEffectServicedChanged()V

    :cond_2
    return-void
.end method

.method private updateEdgeLightingEffect()V
    .locals 5

    .line 333
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 334
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 335
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mResolveInfoList:Ljava/util/List;

    .line 336
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingAllowLists;->isAllowedToUseClassLoader(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    sget-object v1, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->TAG:Ljava/lang/String;

    const-string v2, "Not allow To use class loader"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mDownloadStyleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 344
    sget-object v1, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->TAG:Ljava/lang/String;

    const-string v2, "class name is null.."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 348
    :cond_1
    new-instance v2, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    iget-object v3, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mResolveInfoList:Ljava/util/List;

    .line 349
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->supportEffect()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 357
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mDownloadStyleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mIOnEffectServiceChangedListener:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$IOnEffectServiceChangedListener;

    if-eqz p0, :cond_4

    .line 362
    invoke-interface {p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$IOnEffectServiceChangedListener;->onEffectServicedChanged()V

    :cond_4
    return-void
.end method


# virtual methods
.method public getEdgeStyle(Ljava/lang/String;)Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;
    .locals 2

    .line 191
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 192
    invoke-interface {v0}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

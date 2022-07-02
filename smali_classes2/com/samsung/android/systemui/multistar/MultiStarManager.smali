.class public Lcom/samsung/android/systemui/multistar/MultiStarManager;
.super Ljava/lang/Object;
.source "MultiStarManager.java"


# static fields
.field private static TAG:Ljava/lang/String; = "MultiStarManager"

.field private static mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar; = null

.field public static sRecentKeyConsumed:Z = false


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMultiStarSystemFacade:Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->TAG:Ljava/lang/String;

    const-string v1, "Create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;-><init>(Landroid/content/Context;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mMultiStarSystemFacade:Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;

    .line 46
    const-class p1, Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/SPluginManager;

    new-instance p2, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;-><init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;)V

    const-class p0, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    const/4 v0, 0x0

    invoke-interface {p1, p2, p0, v0}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;
    .locals 1

    .line 33
    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;)Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;
    .locals 0

    .line 33
    sput-object p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mMultiStarSystemFacade:Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;

    return-object p0
.end method


# virtual methods
.method public onLongPressRecents()V
    .locals 0

    .line 64
    sget-object p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    if-eqz p0, :cond_0

    .line 65
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->onLongPressRecents()Z

    move-result p0

    sput-boolean p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->sRecentKeyConsumed:Z

    :cond_0
    return-void
.end method

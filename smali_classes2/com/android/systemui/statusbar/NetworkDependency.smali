.class public Lcom/android/systemui/statusbar/NetworkDependency;
.super Ljava/lang/Object;
.source "NetworkDependency.java"


# instance fields
.field private mProvider:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

.field private final mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;)V
    .locals 4

    .line 36
    const-class v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    const-class v1, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget-object v2, p0, Lcom/android/systemui/statusbar/NetworkDependency;->mProvider:Landroid/util/ArrayMap;

    if-nez v2, :cond_0

    .line 38
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/NetworkDependency;->mProvider:Landroid/util/ArrayMap;

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NetworkDependency;->mProvider:Landroid/util/ArrayMap;

    const-class v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 42
    iget-object v2, p0, Lcom/android/systemui/statusbar/NetworkDependency;->mProvider:Landroid/util/ArrayMap;

    const-class v3, Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/NetworkDependency;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 45
    iget-object p1, p0, Lcom/android/systemui/statusbar/NetworkDependency;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/NetworkDependency;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 48
    iget-object p1, p0, Lcom/android/systemui/statusbar/NetworkDependency;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_3
    iput-object p4, p0, Lcom/android/systemui/statusbar/NetworkDependency;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    .line 51
    iput-object p5, p0, Lcom/android/systemui/statusbar/NetworkDependency;->mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    return-void
.end method

.method private createDependency(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 81
    const-class v0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    const-class v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    .line 83
    const-class v2, Lcom/android/systemui/statusbar/utils/MobileDataResource;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    new-instance p1, Lcom/android/systemui/statusbar/utils/MobileDataResource;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NetworkDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    .line 85
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NetworkDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NetworkDependency;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NetworkDependency;->mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/android/systemui/statusbar/utils/MobileDataResource;-><init>(Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;)V

    goto :goto_0

    .line 87
    :cond_0
    const-class v2, Lcom/android/systemui/statusbar/utils/MobileSignalResource;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    new-instance p1, Lcom/android/systemui/statusbar/utils/MobileSignalResource;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NetworkDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/utils/MobileSignalResource;-><init>(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;)V

    goto :goto_0

    .line 89
    :cond_1
    const-class v2, Lcom/android/systemui/statusbar/utils/RoamingResource;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    new-instance p1, Lcom/android/systemui/statusbar/utils/RoamingResource;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NetworkDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NetworkDependency;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/statusbar/utils/RoamingResource;-><init>(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;)V

    goto :goto_0

    .line 91
    :cond_2
    const-class v2, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    new-instance p1, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;-><init>()V

    goto :goto_0

    .line 93
    :cond_3
    const-class v2, Lcom/android/systemui/statusbar/utils/WifiIconResource;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    new-instance p1, Lcom/android/systemui/statusbar/utils/WifiIconResource;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NetworkDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NetworkDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-direct {p1, v1, p0}, Lcom/android/systemui/statusbar/utils/WifiIconResource;-><init>(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;)V

    goto :goto_0

    .line 97
    :cond_4
    const-class v0, Lcom/android/systemui/statusbar/utils/MPTCPResource;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 98
    new-instance p1, Lcom/android/systemui/statusbar/utils/MPTCPResource;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NetworkDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/utils/MPTCPResource;-><init>(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkDependency;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NetworkDependency;->createDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/NetworkDependency;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

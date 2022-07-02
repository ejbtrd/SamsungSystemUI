.class public Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;
.super Ljava/lang/Object;
.source "OperatorUtilFactory.java"


# instance fields
.field private final mProvider:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/utils/operator/CommonUtil;Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;)V
    .locals 4

    .line 19
    const-class v0, Lcom/android/systemui/statusbar/utils/operator/DualStateUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;->mProvider:Landroid/util/ArrayMap;

    .line 20
    const-class v2, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v2, Lcom/android/systemui/statusbar/utils/operator/DualStateUtil;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/utils/operator/DualStateUtil;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-class v2, Lcom/android/systemui/statusbar/utils/operator/WifiControlUtil;

    new-instance v3, Lcom/android/systemui/statusbar/utils/operator/WifiControlUtil;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/utils/operator/WifiControlUtil;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-class v2, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

    new-instance v3, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;-><init>(Lcom/android/systemui/statusbar/utils/operator/CommonUtil;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-class v2, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

    new-instance v3, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/utils/operator/DualStateUtil;

    invoke-direct {v3, p1, p0}, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;-><init>(Lcom/android/systemui/statusbar/utils/operator/CommonUtil;Lcom/android/systemui/statusbar/utils/operator/DualStateUtil;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-class p0, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;

    new-instance v0, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;-><init>(Lcom/android/systemui/statusbar/utils/operator/CommonUtil;)V

    invoke-virtual {v1, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-class p0, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    new-instance v0, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;-><init>(Lcom/android/systemui/statusbar/utils/operator/CommonUtil;Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;)V

    invoke-virtual {v1, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-class p0, Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;

    new-instance p2, Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;

    invoke-direct {p2}, Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;-><init>()V

    invoke-virtual {v1, p0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-class p0, Lcom/android/systemui/statusbar/utils/operator/BatteryStateUtil;

    new-instance p2, Lcom/android/systemui/statusbar/utils/operator/BatteryStateUtil;

    invoke-direct {p2}, Lcom/android/systemui/statusbar/utils/operator/BatteryStateUtil;-><init>()V

    invoke-virtual {v1, p0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-class p0, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;

    new-instance p2, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;-><init>(Lcom/android/systemui/statusbar/utils/operator/CommonUtil;)V

    invoke-virtual {v1, p0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-class p0, Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;

    new-instance p1, Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;-><init>()V

    invoke-virtual {v1, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

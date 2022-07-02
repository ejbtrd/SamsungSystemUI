.class public final Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;
.super Ljava/lang/Object;
.source "FakeNetworkConditionProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider$FakeMobileState;,
        Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider$FakeCondition;,
        Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider$FakeValues;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addFakeVoWiFiIcons()V
    .locals 0

    return-void
.end method

.method public final getFakeConditions(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;)Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider$FakeCondition;
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "condition"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFakeMobileStateConditions(Lcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider$FakeMobileState;
    .locals 0
    .param p1    # Lcom/android/settingslib/SignalIcon$MobileState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo p0, "mobileState"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFakeValues(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;)Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider$FakeValues;
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo p0, "values"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFakeWifiStateConditions(Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;)Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo p0, "wifiState"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;-><init>()V

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->copyFrom(Lcom/android/settingslib/SignalIcon$State;)V

    return-object p0
.end method

.method public final isEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

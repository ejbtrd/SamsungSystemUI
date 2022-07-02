.class public Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;
.super Ljava/lang/Object;
.source "SideKeyActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final mContext:Landroid/content/Context;

.field private final mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

.field private final mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

.field private mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

.field private final mKeyguardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private final mSamsungGlobalActionsAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

.field private final mStatusBarWrapper:Lcom/android/systemui/globalactions/util/StatusBarWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/android/systemui/globalactions/util/StatusBarWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    .line 39
    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 40
    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 41
    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mKeyguardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    .line 42
    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mStatusBarWrapper:Lcom/android/systemui/globalactions/util/StatusBarWrapper;

    .line 43
    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 44
    iput-object p8, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mSamsungGlobalActionsAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    return-void
.end method


# virtual methods
.method public getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object p0
.end method

.method public onPress()V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->startSideKeySettingsActivity()V

    return-void
.end method

.method public setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-void
.end method

.method public startSideKeySettingsActivity()V
    .locals 9

    .line 62
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "SideKeyActionViewModel"

    const-string v2, "Running side key settings activity"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mSamsungGlobalActionsAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    const-string v4, "611"

    const-string v5, "6111"

    const-string v6, "Side key settings"

    const-wide/16 v7, 0x8

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.SIDE_KEY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mStatusBarWrapper:Lcom/android/systemui/globalactions/util/StatusBarWrapper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/globalactions/util/StatusBarWrapper;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 70
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->dismissDialog(Z)V

    return-void
.end method

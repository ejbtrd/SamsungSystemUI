.class public Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;
.super Ljava/lang/Object;
.source "GlobalActionsFeatureFactory.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;


# instance fields
.field mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field mContext:Landroid/content/Context;

.field mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

.field mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

.field mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    .line 97
    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 98
    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    .line 99
    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    .line 100
    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 101
    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-void
.end method

.method private loggingStrategy(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .line 409
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-string v0, ""

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 412
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [ "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GlobalActionsFeatureFactory"

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createActionInteractionStrategies(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;",
            ">;"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "DEMO_MODE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "emergency"

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    new-instance v1, Lcom/samsung/android/globalactions/features/DemoModeStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/ToastController;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/globalactions/features/DemoModeStrategy;-><init>(Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v3, "KNOX_DEVICE_MANAGER"

    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "power"

    if-eqz v1, :cond_2

    const-string v1, "data_mode"

    .line 238
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    :cond_1
    new-instance v1, Lcom/android/systemui/globalactions/features/KnoxMDMStrategy;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v4}, Lcom/android/systemui/globalactions/features/KnoxMDMStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "restart"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 246
    :pswitch_0
    new-instance p1, Lcom/samsung/android/globalactions/features/SktStrategy;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/ToastController;

    .line 247
    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    .line 248
    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 249
    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/samsung/android/globalactions/features/SktStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    .line 246
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string p1, "ActionInteractionStrategy"

    .line 255
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x65e8905 -> :sswitch_2
        0x416a9e0f -> :sswitch_1
        0x6118c591 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public createActionUpdateStrategies()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/ActionUpdateStrategy;",
            ">;"
        }
    .end annotation

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SUPPORT_SIDE_KEY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    new-instance v1, Lcom/android/systemui/globalactions/features/SideKeyStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    .line 401
    invoke-interface {p0, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/systemui/globalactions/features/SideKeyStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Landroid/content/Context;Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;)V

    .line 400
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public createActionsCreationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SUPPORT_SIDE_KEY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    new-instance v1, Lcom/android/systemui/globalactions/features/SideKeyStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    .line 143
    invoke-interface {v5, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/globalactions/features/SideKeyStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Landroid/content/Context;Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;)V

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "DATA_MODE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    new-instance v1, Lcom/samsung/android/globalactions/features/DataModeStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/globalactions/features/DataModeStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "LOCK_DOWN_MODE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    new-instance v1, Lcom/samsung/android/globalactions/features/LockdownModeStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/globalactions/features/LockdownModeStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "FORCE_RESTART_MESSAGE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    new-instance v1, Lcom/samsung/android/globalactions/features/ForceRestartMessageStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/globalactions/features/ForceRestartMessageStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "FINGERPRINT_IN_DISPLAY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 159
    new-instance v1, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;-><init>(Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "KNOX_SDK"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 163
    new-instance v1, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 164
    invoke-interface {v2, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v2, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object v2, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V

    .line 163
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string p1, "ActionsCreationStrategy"

    .line 167
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public createDefaultActionsCreationStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;",
            ">;"
        }
    .end annotation

    .line 262
    const-class v0, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "emergency"

    .line 264
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SCOVER"

    if-eqz v2, :cond_4

    .line 265
    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SAFETY_CARE"

    invoke-interface {p2, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 266
    new-instance p2, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {p2, p1, v2, v4}, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "DESKTOP_MODE"

    invoke-interface {p2, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 270
    new-instance p2, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-interface {v5, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {p2, v2, v4, v5, v6}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "KNOX_SDK"

    invoke-interface {p2, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 275
    new-instance p2, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-interface {v2, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 276
    invoke-interface {v2, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v2, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object v4, p2

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V

    .line 275
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    invoke-interface {p2, v3}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 280
    new-instance p2, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {v2, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 281
    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ToastController;

    .line 282
    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    .line 280
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string p2, "RESERVE_BATTERY_MODE"

    invoke-interface {p1, p2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 286
    new-instance p1, Lcom/samsung/android/globalactions/features/ReserveBatteryModeStrategy;

    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {p1, p2}, Lcom/samsung/android/globalactions/features/ReserveBatteryModeStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v2, "bug_report"

    .line 288
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 289
    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    invoke-interface {p2, v3}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 290
    new-instance p2, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {v2, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 291
    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ToastController;

    .line 292
    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    .line 290
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    const-string p1, "DefaultActionsCreationStrategy"

    .line 295
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method public createDisposingStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SCOVER"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    new-instance v1, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-interface {v2, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 201
    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/ToastController;

    .line 202
    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    move-object v2, v1

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    .line 200
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "FINGERPRINT_IN_DISPLAY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    new-instance v1, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;-><init>(Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SUPPORT_SIDE_KEY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    new-instance v1, Lcom/android/systemui/globalactions/features/SideKeyStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    .line 211
    invoke-interface {v5, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/globalactions/features/SideKeyStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Landroid/content/Context;Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;)V

    .line 210
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "FRONT_COVER_DISPLAY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    new-instance v1, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    .line 216
    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;)V

    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v1, "DESKTOP_MODE"

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 220
    new-instance p1, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string p1, "DisposingStrategy"

    .line 224
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public createInitializationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SAFETY_CARE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SCOVER"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    new-instance v1, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-interface {v2, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 114
    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/ToastController;

    .line 115
    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    move-object v2, v1

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    .line 113
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "DESKTOP_MODE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    new-instance v1, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "KNOX_SDK"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    new-instance v1, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 125
    invoke-interface {v2, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v2, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object v2, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V

    .line 124
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "KNOX_CONTAINER"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 129
    new-instance v1, Lcom/samsung/android/globalactions/features/KnoxContainerStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/globalactions/features/KnoxContainerStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string p1, "InitializationStrategy"

    .line 132
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public createOnKeyListenerStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/OnKeyListenerStrategy;",
            ">;"
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "KNOX_SDK"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    new-instance v1, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 361
    invoke-interface {v2, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v2, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object v2, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V

    .line 360
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p1, "OnKeyListenerStrategy"

    .line 364
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public createSecureConfirmStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string/jumbo v2, "restart"

    const-string v3, "power"

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "emergency"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "side_key_settings"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_3
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "data_mode"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "safe_mode"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 311
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v4, "FINGERPRINT_IN_DISPLAY"

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 312
    new-instance v1, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-direct {v1, v4}, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;-><init>(Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v4, "SCOVER"

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 315
    new-instance v1, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-interface {v4, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 316
    invoke-interface {v4, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v4, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/samsung/android/globalactions/util/ToastController;

    .line 317
    invoke-interface {v4, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v4, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    move-object v4, v1

    move-object v7, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    .line 315
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_7
    :goto_1
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    .line 327
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v4, "POWER_OFF_LOCK"

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 328
    new-instance v1, Lcom/samsung/android/globalactions/features/PowerOffLockStrategy;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    invoke-interface {v5, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/globalactions/features/PowerOffLockStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_9
    :goto_2
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_3

    .line 335
    :cond_a
    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v1, "FRONT_COVER_DISPLAY"

    invoke-interface {p2, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 336
    new-instance p2, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    .line 337
    invoke-interface {p0, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-direct {p2, p1, v1, p0}, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;)V

    .line 336
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_3
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x436d1ceb -> :sswitch_5
        -0x15abc2e8 -> :sswitch_4
        0x65e8905 -> :sswitch_3
        0x41113beb -> :sswitch_2
        0x416a9e0f -> :sswitch_1
        0x6118c591 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public createSoftwareUpdateStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/SoftwareUpdateStrategy;",
            ">;"
        }
    .end annotation

    .line 346
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "restart"

    .line 348
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 349
    new-instance p2, Lcom/samsung/android/globalactions/features/FOTAForceUpdateStrategy;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-interface {p0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-direct {p2, v0, p0}, Lcom/samsung/android/globalactions/features/FOTAForceUpdateStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SystemController;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public createViewInflateStrategy()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/ViewInflateStrategy;",
            ">;"
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "CAPTURED_BLUR"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    new-instance v1, Lcom/android/systemui/globalactions/features/CapturedBlurStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;

    invoke-interface {p0, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/globalactions/features/CapturedBlurStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public createWindowDecorationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SF_EFFECT"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    new-instance v1, Lcom/samsung/android/globalactions/features/SepEffectStrategy;

    invoke-direct {v1}, Lcom/samsung/android/globalactions/features/SepEffectStrategy;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "NAV_BAR"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    new-instance v1, Lcom/samsung/android/globalactions/features/NavigationBarStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2}, Lcom/samsung/android/globalactions/features/NavigationBarStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SCOVER"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    new-instance v1, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-interface {v2, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 186
    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/ToastController;

    .line 187
    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    move-object v2, v1

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    .line 185
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string p1, "WindowDecorationStrategy"

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public createWindowManagerFunctionStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/WindowManagerFunctionStrategy;",
            ">;"
        }
    .end annotation

    .line 371
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v1, "SCOVER"

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    new-instance v0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 375
    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/ToastController;

    .line 376
    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    .line 374
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p1, "WindowManagerFunctionStrategy"

    .line 379
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object p2
.end method

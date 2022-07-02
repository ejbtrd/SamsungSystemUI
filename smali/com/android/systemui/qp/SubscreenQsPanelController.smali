.class public Lcom/android/systemui/qp/SubscreenQsPanelController;
.super Ljava/lang/Object;
.source "SubscreenQsPanelController.java"

# interfaces
.implements Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

.field private mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    .line 27
    invoke-static {p1, p2}, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->getInstance(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;)Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    .line 29
    const-class p2, Lcom/android/systemui/util/QsResetSettingsManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/QsResetSettingsManager;

    invoke-virtual {p2, p0}, Lcom/android/systemui/util/QsResetSettingsManager;->registerApplier(Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "sub_screen_brightness_mode"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public applyResetSetting()V
    .locals 2

    const-string v0, "SubscreenQsPanelController"

    const-string v1, "applyResetSetting"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "sub_screen_brightness_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public getSubRoomQuickPanel()Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    invoke-static {v0, v1}, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->getInstance(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;)Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    return-object p0
.end method

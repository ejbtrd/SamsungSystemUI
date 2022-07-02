.class public Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;
.super Ljava/lang/Object;
.source "SlimIndicatorSettingsBackUpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;
    }
.end annotation


# instance fields
.field private mCachedBlackListDBValue:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsBackup:Z

.field private mNotificationSortOrder:I

.field private mPanelSwipeDirectlyArea:I

.field private mPanelSwipeDirectlyEnabled:Z

.field private mPanelSwipeDirectlyPosition:Ljava/lang/String;

.field private mQsTileLayoutCustomMatrixEnabled:Z

.field private mSettingsListener:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mCachedBlackListDBValue:Ljava/lang/String;

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mNotificationSortOrder:I

    .line 52
    iput-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mPanelSwipeDirectlyEnabled:Z

    .line 54
    iput v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mPanelSwipeDirectlyArea:I

    .line 56
    iput-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mQsTileLayoutCustomMatrixEnabled:Z

    .line 157
    iput-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mIsBackup:Z

    .line 63
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mContext:Landroid/content/Context;

    .line 64
    new-instance p1, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$1;)V

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mSettingsListener:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->backUpValues()V

    return-void
.end method

.method private backUpValues()V
    .locals 3

    .line 160
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->getLogText()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->getBlackListDBValue()Ljava/lang/String;

    move-result-object v2

    .line 163
    iput-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mCachedBlackListDBValue:Ljava/lang/String;

    .line 166
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getNotificationSortOrderValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mNotificationSortOrder:I

    .line 170
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isExpandQsAtOnceEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mPanelSwipeDirectlyEnabled:Z

    .line 171
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getDirectQuickSettingArea()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mPanelSwipeDirectlyArea:I

    .line 172
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getDirectQuickSettingPosition()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mPanelSwipeDirectlyPosition:Ljava/lang/String;

    .line 176
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isQSButtonGridPopupEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mQsTileLayoutCustomMatrixEnabled:Z

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backUpValues(DONE) mIsBackup:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mIsBackup:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] >> ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->getLogText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SlimIndicatorSettingsBackUpManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mIsBackup:Z

    return-void
.end method

.method private resetValues()V
    .locals 3

    .line 187
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetValues() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->getLogText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[QuickStar]SlimIndicatorSettingsBackUpManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "rotate,headset"

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->setBlackListDBValue(Ljava/lang/String;)V

    .line 192
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper;->setNotificationSortOrderValue(I)V

    .line 196
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper;->setExpandQsAtOnceEnabled(I)V

    .line 197
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper;->setDirectQuickSettingArea(I)V

    .line 198
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SettingsHelper;->setDirectQuickSettingPosition(Ljava/lang/String;)V

    .line 202
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper;->setQSButtonGridPopupEnabled(I)V

    return-void
.end method


# virtual methods
.method public getBlackListDBValue()Ljava/lang/String;
    .locals 2

    .line 108
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 109
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "icon_blacklist"

    .line 108
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLogText()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QuickStar]SlimIndicatorSettingsBackUpManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (1)CachedBlackListDBValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mCachedBlackListDBValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (2)NotificationSortOrder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mNotificationSortOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (3-1)PanelSwipeDirectlyEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mPanelSwipeDirectlyEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (3-2)PanelSwipeDirectlyPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mPanelSwipeDirectlyPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (3-3)PanelSwipeDirectlyArea:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mPanelSwipeDirectlyArea:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (4)TileLayoutCustomMatrixEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mQsTileLayoutCustomMatrixEnabled:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onPluginConnected()V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mSettingsListener:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;->registerListener()V

    return-void
.end method

.method public onPluginDisconnected()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mSettingsListener:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;

    invoke-virtual {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;->unregisterListener()V

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->resetValues()V

    return-void
.end method

.method public setBlackListDBValue(Ljava/lang/String;)V
    .locals 2

    .line 100
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 101
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "icon_blacklist"

    .line 100
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

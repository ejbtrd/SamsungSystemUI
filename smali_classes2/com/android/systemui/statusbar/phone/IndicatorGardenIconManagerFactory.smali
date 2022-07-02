.class public Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;
.super Ljava/lang/Object;
.source "IndicatorGardenIconManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mContainerList:[Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;

.field private mManagerList:[Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;

    .line 44
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->mContainerList:[Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 45
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->mManagerList:[Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method private addIndicatorIconGroup(ILcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 89
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;->INDICATOR:Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->setType(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;)V

    .line 91
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->mManagerList:[Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    aput-object p2, p0, p1

    return-void
.end method

.method private getLogDumpString()Ljava/lang/String;
    .locals 6

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mContainerList[LOCK]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->mContainerList:[Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string/jumbo v4, "null"

    if-eqz v2, :cond_0

    const-string v2, "KeyguardStatusBarView"

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mContainerList[HOME]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->mContainerList:[Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    if-eqz v2, :cond_1

    const-string v4, "PhoneStatusBarView"

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  IconManager[0]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->mManagerList:[Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  IconManager[1]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->mManagerList:[Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    aget-object p0, p0, v5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  STATBAR_INDICATOR_GARDENER_ALGORITHM_NAME: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SPECIAL_ALGORITHM:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private printLogLine(Ljava/lang/String;)V
    .locals 1

    .line 142
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->getLogDumpString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[IndicatorGarden]IconManagerFactory"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getWidthHomeIndicatorRightIconContainer()I
    .locals 3

    .line 119
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isSidelingCenterCutout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->mContainerList:[Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;

    const/4 v0, 0x1

    aget-object v2, p0, v0

    if-eqz v2, :cond_2

    .line 121
    aget-object p0, p0, v0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;->getRightStatusIconContainer()Landroid/view/ViewGroup;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 124
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_1
    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public init()V
    .locals 1

    const-string v0, "init()"

    .line 54
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->printLogLine(Ljava/lang/String;)V

    return-void
.end method

.method public registerIconManager(Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;)Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
    .locals 4

    const-string v0, "[IndicatorGarden]IconManagerFactory"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "WRONG VALUE !! registerIconManager(indicator is null)"

    .line 63
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 66
    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;->getTicket()I

    move-result v2

    if-ltz v2, :cond_5

    const/4 v3, 0x1

    if-ge v3, v2, :cond_1

    goto/16 :goto_3

    .line 71
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->removeIndicatorIconManager(I)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->mContainerList:[Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;

    aput-object p1, v0, v2

    .line 74
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;->getRightStatusIconContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;->getRightStatusIconContainer()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 75
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;->isTinted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;->getRightStatusIconContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const-class v3, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/CommandQueue;)V

    goto :goto_0

    .line 77
    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;->getRightStatusIconContainer()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-class v3, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;-><init>(Landroid/widget/LinearLayout;Lcom/android/systemui/statusbar/CommandQueue;)V

    :goto_0
    move-object v1, v0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerIconManager("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") make IconManager with "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;->isTinted()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "tinted"

    goto :goto_1

    :cond_3
    const-string p1, "dark"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->printLogLine(Ljava/lang/String;)V

    goto :goto_2

    .line 80
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerIconManager(ticket:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") nothing!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->printLogLine(Ljava/lang/String;)V

    .line 82
    :goto_2
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->addIndicatorIconGroup(ILcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    return-object v1

    .line 68
    :cond_5
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "WRONG VALUE !! registerIconManager(ticket:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public removeIndicatorIconManager(I)V
    .locals 4

    const-string v0, ")"

    const/4 v1, 0x1

    if-gt p1, v1, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->mManagerList:[Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 105
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->mManagerList:[Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    aget-object v3, v3, p1

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 106
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->mManagerList:[Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    aput-object v2, v1, p1

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->mContainerList:[Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;

    aput-object v2, v1, p1

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeIndicatorIconManager("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->printLogLine(Ljava/lang/String;)V

    return-void

    .line 101
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WRONG VALUE !! removeIconManager("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[IndicatorGarden]IconManagerFactory"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

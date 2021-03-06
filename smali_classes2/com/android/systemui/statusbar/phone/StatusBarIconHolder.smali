.class public Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
.super Ljava/lang/Object;
.source "StatusBarIconHolder.java"


# instance fields
.field private mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field private mMPTCPState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

.field private mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

.field private mTag:I

.field private mType:I

.field private mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    .line 47
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    return-void
.end method

.method public static fromCallIndicatorState(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 10

    .line 99
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 100
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->isNoCalling:Z

    if-eqz v1, :cond_0

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->noCallingResId:I

    goto :goto_0

    :cond_0
    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->callStrengthResId:I

    :goto_0
    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->noCallingDescription:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->callStrengthDescription:Ljava/lang/String;

    :goto_1
    move-object v9, v1

    .line 103
    new-instance v1, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-static {p0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 105
    iget p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->subId:I

    iput p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    return-object v0
.end method

.method public static fromIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 1

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 60
    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object v0
.end method

.method public static fromMPTCPIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 1

    .line 185
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 186
    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMPTCPState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    const/4 p0, 0x4

    .line 187
    iput p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    return-object v0
.end method

.method public static fromMobileIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 2

    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 87
    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    const/4 v1, 0x2

    .line 88
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    .line 89
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    iput p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    return-object v0
.end method

.method public static fromWifiIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 1

    .line 78
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 79
    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    const/4 p0, 0x1

    .line 80
    iput p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    return-object v0
.end method


# virtual methods
.method public getIcon()Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object p0
.end method

.method public getMPTCPState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMPTCPState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    return-object p0
.end method

.method public getMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return-object p0
.end method

.method public getTag()I
    .locals 0

    .line 180
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 110
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    return p0
.end method

.method public getWifiState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    return-object p0
.end method

.method public isVisible()Z
    .locals 3

    .line 141
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return v1

    .line 149
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMPTCPState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->visible:Z

    return p0

    .line 147
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    return p0

    .line 145
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    return p0

    .line 143
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-boolean p0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    return p0
.end method

.method public setIcon(Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-void
.end method

.method public setMPTCPState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMPTCPState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    return-void
.end method

.method public setMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->isVisible()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 160
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMPTCPState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->visible:Z

    goto :goto_0

    .line 170
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    goto :goto_0

    .line 166
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    goto :goto_0

    .line 162
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iput-boolean p1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    :goto_0
    return-void
.end method

.method public setWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    return-void
.end method

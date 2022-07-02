.class public Lcom/android/keyguard/EmergencyButton;
.super Lcom/android/systemui/widget/SystemUIButton;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/EmergencyButton$Samsung321Task;
    }
.end annotation


# instance fields
.field private mDownX:I

.field private mDownY:I

.field private final mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

.field private final mEnableEmergencyCallWhileSimLocked:Z

.field private mIsSamsung321Enable:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressWasDragged:Z


# direct methods
.method public static synthetic $r8$lambda$2aGPXZbJN74ysWEks-vXezI9mJQ(Lcom/android/keyguard/EmergencyButton;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/EmergencyButton;->lambda$onFinishInflate$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$2waV9N02cMSTPw9FCuro185vKP8(Lcom/android/keyguard/EmergencyButton;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/EmergencyButton;->lambda$onFinishInflate$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/EmergencyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 70
    iput-boolean p2, p0, Lcom/android/keyguard/EmergencyButton;->mIsSamsung321Enable:Z

    .line 85
    iget-object p2, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x11100e8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    .line 87
    new-instance p2, Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-direct {p2, p1}, Lcom/android/internal/util/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/EmergencyButton;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isSamsung321Enabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lcom/android/keyguard/EmergencyButton;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/android/keyguard/EmergencyButton;->mIsSamsung321Enable:Z

    return p1
.end method

.method private isButtonDisableBySimState(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private isSamsung321Enabled()Z
    .locals 9

    const-string v0, "isEnabled"

    const-string v1, "com.srph.emergency321"

    const/4 v2, 0x0

    .line 345
    :try_start_0
    iget-object v3, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 347
    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 349
    invoke-static {v3, v1}, Lcom/android/systemui/util/Utils;->checkAvailablePackageSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 350
    array-length v3, v1

    if-lez v3, :cond_2

    .line 351
    aget-object v1, v1, v2

    const-string v3, "0848EDB80D10A557AA0D885AB3B669C915DCD6BCA8D78715568A06876AACD7CD"

    invoke-static {v1, v3}, Lcom/android/systemui/util/Utils;->matchSignature(Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "content://com.srph.emergency321.settings/settings/1"

    .line 352
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 353
    iget-object p0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p0, "_ID"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 354
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    .line 357
    :try_start_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 359
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "EmergencyButton"

    const-string v3, "Samsung321 - Query successful"

    .line 362
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 365
    :goto_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 366
    throw v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    return v2
.end method

.method private isVisibleKorEmergencyCallButton(II)Z
    .locals 7

    .line 248
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "EmergencyButton"

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const-string p0, "SIM_STATE_ABSENT"

    .line 251
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v3, 0x0

    if-nez p2, :cond_1

    const-string p0, "SIM_STATE_UNKNOWN"

    .line 254
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isIccBlockedPermanently()Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_1
    const/4 v4, 0x7

    if-ne p2, v4, :cond_2

    const-string p0, "SIM_STATE_PERM_DISABLED"

    .line 259
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 v4, 0x5

    if-ne p2, v4, :cond_3

    .line 261
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_SKT_USIM_TEXT:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "ril.simtype"

    .line 263
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x13

    .line 264
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v5, v4, :cond_3

    return v2

    .line 267
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    .line 273
    :cond_4
    iget-object p0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_6

    const-string/jumbo p0, "ril.skt.network_regist"

    .line 274
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 275
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "Idle"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_7

    const/4 v4, 0x4

    const-string v5, ";"

    .line 276
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x2

    .line 277
    aget-object v4, p0, v4

    const-string v5, "CS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 278
    aget-object p0, p0, v5

    const-string v5, "PS"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 279
    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 280
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 281
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v4, :cond_7

    if-eqz p0, :cond_7

    :cond_5
    const-string p0, "LIMITED SERVICE"

    .line 283
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v2

    goto :goto_0

    :cond_6
    const-string p0, "Can\'t find service states"

    .line 288
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move p0, v3

    :goto_0
    if-eqz p0, :cond_8

    return v2

    .line 294
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can\'t match sim state, simState : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)Z
    .locals 0

    .line 96
    iget-boolean p1, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    .line 97
    invoke-virtual {p1}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-virtual {p0}, Lcom/android/internal/util/EmergencyAffordanceManager;->performEmergencyCall()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onFinishInflate$1(Landroid/view/View;)Z
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->launchPHFeature()Z

    move-result p0

    return p0
.end method

.method private launchPHFeature()Z
    .locals 3

    const-string v0, "EmergencyButton"

    .line 322
    :try_start_0
    iget-boolean v1, p0, Lcom/android/keyguard/EmergencyButton;->mIsSamsung321Enable:Z

    if-eqz v1, :cond_1

    .line 323
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.srph.emergency321.START"

    .line 324
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    .line 325
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 326
    iget-object v2, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "PH Feature, Launching Samsung Emergency 321"

    .line 327
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object p0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "PH Feature, Samsung Emergency 321 not found"

    .line 331
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "PH Feature, Samsung Emergency 321 not enabled in settings"

    .line 334
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PH Feature, Cannot launch activity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 92
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUIButton;->onFinishInflate()V

    .line 93
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-virtual {v0}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 105
    :cond_0
    new-instance v0, Lcom/android/keyguard/EmergencyButton$Samsung321Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/EmergencyButton$Samsung321Task;-><init>(Lcom/android/keyguard/EmergencyButton;Lcom/android/keyguard/EmergencyButton$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 106
    new-instance v0, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_0

    .line 115
    iput v0, p0, Lcom/android/keyguard/EmergencyButton;->mDownX:I

    .line 116
    iput v1, p0, Lcom/android/keyguard/EmergencyButton;->mDownY:I

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    goto :goto_0

    .line 119
    :cond_0
    iget v2, p0, Lcom/android/keyguard/EmergencyButton;->mDownX:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 120
    iget v2, p0, Lcom/android/keyguard/EmergencyButton;->mDownY:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 121
    iget-object v2, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 122
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v2, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    .line 126
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performLongClick()Z
    .locals 0

    .line 142
    invoke-super {p0}, Landroid/widget/Button;->performLongClick()Z

    move-result p0

    return p0
.end method

.method updateEmergencyCallButton(ZZZIIZ)V
    .locals 4

    .line 180
    sget-boolean p3, Lcom/android/systemui/LsRune;->SECURITY_NOT_REQUIRE_SIMPUK_CODE:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    if-ne p5, p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    .line 182
    :goto_0
    const-class v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 183
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    if-eqz v3, :cond_1

    .line 184
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isOutOfService()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 187
    :cond_1
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_HIDE_EMERGENCY_BUTTON_BY_SIMSTATE:Z

    if-eqz v3, :cond_2

    invoke-direct {p0, p5}, Lcom/android/keyguard/EmergencyButton;->isButtonDisableBySimState(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_6

    if-eqz p1, :cond_3

    goto :goto_2

    .line 195
    :cond_3
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    .line 199
    :cond_4
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_EMERGENCY_BUTTON_KOR:Z

    if-eqz p2, :cond_5

    .line 201
    invoke-direct {p0, p4, p5}, Lcom/android/keyguard/EmergencyButton;->isVisibleKorEmergencyCallButton(II)Z

    move-result p2

    move v0, p2

    goto :goto_2

    :cond_5
    if-eqz p6, :cond_7

    .line 203
    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result p2

    if-nez p2, :cond_7

    goto :goto_2

    :cond_6
    if-eqz p3, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    move v0, v1

    :goto_2
    if-eqz v0, :cond_a

    .line 215
    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    if-eqz p1, :cond_8

    const p1, 0x104066b

    goto :goto_3

    :cond_8
    if-eqz p3, :cond_9

    .line 223
    sget p1, Lcom/android/systemui/R$string;->kg_sim_puk_tmo_enter_unlock_code:I

    goto :goto_3

    .line 225
    :cond_9
    sget p1, Lcom/android/systemui/R$string;->kg_lockscreen_emergency_call_button_text:I

    .line 231
    :goto_3
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    :cond_a
    const/16 p1, 0x8

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    :goto_4
    return-void
.end method

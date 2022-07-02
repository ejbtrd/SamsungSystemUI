.class public Lcom/android/keyguard/KeyguardPresentationDisabler;
.super Ljava/lang/Object;
.source "KeyguardPresentationDisabler.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field private static final DISABLE_SPEG:Z

.field private static final KEYS:[I


# instance fields
.field private final mDownCount:[I

.field private mKeyEnabled:Z

.field private mLastDownTime:J

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 37
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/keyguard/KeyguardPresentationDisabler;->KEYS:[I

    const-string v0, "com.samsung.speg.disable"

    .line 48
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardPresentationDisabler;->DISABLE_SPEG:Z

    return-void

    :array_0
    .array-data 4
        0x18
        0x19
    .end array-data
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 41
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mDownCount:[I

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mLastDownTime:J

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mKeyEnabled:Z

    .line 53
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 54
    iput-object p3, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 57
    const-class p1, Lcom/android/keyguard/KeyguardPresentationDisabler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerNsDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private reset()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mDownCount:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const-wide/16 v0, 0x0

    .line 68
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mLastDownTime:J

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  - mKeyEnabled: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mKeyEnabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mKeyEnabled:Z

    if-eqz p1, :cond_0

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " / "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mLastDownTime:J

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0xa

    .line 127
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(C)V

    :goto_0
    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)V
    .locals 13

    .line 72
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mKeyEnabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    sget-object v2, Lcom/android/keyguard/KeyguardPresentationDisabler;->KEYS:[I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v3, :cond_3

    aget v8, v2, v5

    .line 84
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 85
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_2

    iget-wide v9, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mLastDownTime:J

    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-eqz v11, :cond_1

    sub-long v9, v0, v9

    const-wide/16 v11, 0x1e

    cmp-long v9, v9, v11

    if-gtz v9, :cond_2

    .line 87
    :cond_1
    sget-object v9, Lcom/android/keyguard/KeyguardPresentationDisabler;->KEYS:[I

    aget v9, v9, v4

    sub-int/2addr v8, v9

    if-ltz v8, :cond_2

    .line 89
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mLastDownTime:J

    .line 90
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mDownCount:[I

    aget v9, v6, v8

    add-int/2addr v9, v7

    aput v9, v6, v8

    move v6, v7

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-nez v6, :cond_4

    .line 97
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPresentationDisabler;->reset()V

    return-void

    .line 103
    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mDownCount:[I

    array-length v0, p1

    move v1, v4

    move v2, v1

    :goto_1
    if-ge v4, v0, :cond_6

    aget v3, p1, v4

    if-lez v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 110
    :cond_6
    sget-object p1, Lcom/android/keyguard/KeyguardPresentationDisabler;->KEYS:[I

    array-length v0, p1

    if-ne v1, v0, :cond_8

    .line 111
    array-length p1, p1

    if-ne v2, p1, :cond_7

    .line 112
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    const-string p1, "KeyguardDisplayManager"

    const-string v0, "keys were pressed to disable KeyguardPresentation"

    .line 113
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-boolean v7, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mKeyEnabled:Z

    goto :goto_2

    .line 116
    :cond_7
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPresentationDisabler;->reset()V

    :cond_8
    :goto_2
    return-void
.end method

.method isEnabled(Landroid/view/DisplayInfo;)Z
    .locals 4

    .line 133
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "KeyguardDisplayManager"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v0, "debug.keyguard.show_presentation"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Show KeyguardPresentation for debugging"

    .line 134
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 138
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mKeyEnabled:Z

    if-eqz v0, :cond_1

    const-string p0, "Do now show KeyguardPresentation: key enabled"

    .line 139
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 147
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isSideSyncEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Do not show KeyguardPresentation: sideSync is enabled"

    .line 148
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 154
    :cond_2
    iget p0, p1, Landroid/view/DisplayInfo;->flags:I

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_3

    const-string p0, "Do not show KeyguardPresentation: Display.FLAG_NO_LOCK_PRESENTATION"

    .line 155
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 160
    :cond_3
    sget-boolean p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->DISABLE_SPEG:Z

    if-nez p0, :cond_4

    iget-object p0, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    const-string p1, "SpegVirtualDisplay"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "SPEG"

    const-string p1, "Do not show KeyguardPresentation on SpegVirtualDisplay"

    .line 161
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    return v1
.end method

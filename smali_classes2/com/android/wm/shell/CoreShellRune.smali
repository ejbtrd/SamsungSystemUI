.class public Lcom/android/wm/shell/CoreShellRune;
.super Ljava/lang/Object;
.source "CoreShellRune.java"


# static fields
.field public static final APP_LAUNCHING_TRACE:Z

.field public static final BAIDU_CARLIFE:Z

.field public static final FW_DEDICATED_MEMORY:Z

.field public static final IS_TABLET_DEVICE:Z

.field public static final MW_BOUNDS_POLICY_WITH_EXTRA_STABLE_INSETS:Z

.field public static final MW_FREEFORM_USAGE_LOGGING:Z

.field public static final MW_MULTI_SPLIT_BACKGROUND:Z

.field public static final MW_MULTI_SPLIT_BOUNDS_POLICY_WITHOUT_CUTOUT:Z

.field public static final MW_NAVBAR_MOVABLE_POLICY:Z

.field public static final MW_PIP_DISABLE_ROUND_CORNER:Z

.field public static final MW_SAFE_DEBUG_LOG:Z

.field public static final MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY:Z

.field public static final MW_SPLIT_USAGE_LOGGING:Z

.field public static final MW_SPLIT_USAGE_RUNESTONE_LOGGING:Z

.field public static final MW_SUPPORT_DRAG_AND_DROP_CAPTURED_BLUR:Z

.field public static final MW_SUPPORT_DRAG_AND_DROP_PATIAL_BLUR:Z

.field public static final MW_SUPPORT_DRAG_AND_DROP_REAL_TIME_BLUR:Z

.field public static final MW_SUPPORT_EXTRA_STABLE_INSETS:Z

.field public static final MW_USAGE_LOGGING:Z

.field public static final SAFE_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/CoreShellRune;->SAFE_DEBUG:Z

    .line 33
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    sput-boolean v1, Lcom/android/wm/shell/CoreShellRune;->IS_TABLET_DEVICE:Z

    .line 41
    sput-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SAFE_DEBUG_LOG:Z

    .line 44
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    sput-boolean v1, Lcom/android/wm/shell/CoreShellRune;->FW_DEDICATED_MEMORY:Z

    .line 63
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_MOVABLE_POLICY:Z

    sput-boolean v1, Lcom/android/wm/shell/CoreShellRune;->MW_NAVBAR_MOVABLE_POLICY:Z

    .line 88
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_USAGE_LOGGING:Z

    sput-boolean v1, Lcom/android/wm/shell/CoreShellRune;->MW_USAGE_LOGGING:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 115
    invoke-static {}, Lcom/android/wm/shell/CoreShellRune;->isDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/wm/shell/CoreShellRune;->APP_LAUNCHING_TRACE:Z

    .line 125
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    sput-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_USAGE_LOGGING:Z

    .line 128
    sput-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_USAGE_RUNESTONE_LOGGING:Z

    .line 231
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_EXTRA_STABLE_INSETS:Z

    sput-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_EXTRA_STABLE_INSETS:Z

    .line 234
    sput-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_BOUNDS_POLICY_WITH_EXTRA_STABLE_INSETS:Z

    .line 240
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY:Z

    sput-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY:Z

    .line 295
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    sput-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    .line 337
    sput-boolean v2, Lcom/android/wm/shell/CoreShellRune;->MW_MULTI_SPLIT_BOUNDS_POLICY_WITHOUT_CUTOUT:Z

    .line 344
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    sput-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_FREEFORM_USAGE_LOGGING:Z

    .line 413
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_PATIAL_BLUR:Z

    sput-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_DRAG_AND_DROP_PATIAL_BLUR:Z

    .line 416
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_REAL_TIME_BLUR:Z

    sput-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_DRAG_AND_DROP_REAL_TIME_BLUR:Z

    .line 419
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_CAPTURED_BLUR:Z

    sput-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_DRAG_AND_DROP_CAPTURED_BLUR:Z

    const-string/jumbo v0, "ro.surface_flinger.protected_contents"

    const-string v3, ""

    .line 455
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    .line 456
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 457
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/android/wm/shell/CoreShellRune;->MW_PIP_DISABLE_ROUND_CORNER:Z

    .line 497
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    sput-boolean v0, Lcom/android/wm/shell/CoreShellRune;->BAIDU_CARLIFE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDebugLevelMid()Z
    .locals 2

    const-string/jumbo v0, "ro.debug_level"

    .line 111
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x494d"

    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

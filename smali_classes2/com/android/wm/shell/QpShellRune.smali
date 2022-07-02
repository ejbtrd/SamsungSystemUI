.class public Lcom/android/wm/shell/QpShellRune;
.super Ljava/lang/Object;
.source "QpShellRune.java"


# static fields
.field public static final NOTI_BUBBLE_STYLE_TABLET:Z

.field public static final NOTI_HIDE_INFORMATION_MIRRORING:Z

.field public static mIsSupportLeboMirroring:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    invoke-static {}, Lcom/samsung/android/util/SemViewUtils;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/QpShellRune;->NOTI_BUBBLE_STYLE_TABLET:Z

    .line 90
    invoke-static {}, Lcom/android/wm/shell/QpShellRune;->isSupportHideInformationMirroring()Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/QpShellRune;->NOTI_HIDE_INFORMATION_MIRRORING:Z

    const/4 v0, 0x0

    .line 95
    sput v0, Lcom/android/wm/shell/QpShellRune;->mIsSupportLeboMirroring:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupportHideInformationMirroring()Z
    .locals 3

    .line 97
    sget v0, Lcom/android/wm/shell/QpShellRune;->mIsSupportLeboMirroring:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 98
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CHINA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    sput v0, Lcom/android/wm/shell/QpShellRune;->mIsSupportLeboMirroring:I

    .line 100
    :cond_1
    sget v0, Lcom/android/wm/shell/QpShellRune;->mIsSupportLeboMirroring:I

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

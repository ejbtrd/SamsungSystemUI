.class public interface abstract Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
.super Ljava/lang/Object;
.source "TwoPhoneModeController.java"


# static fields
.field public static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public abstract inflateIcon(Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;)Landroid/widget/ImageView;
.end method

.method public abstract init()V
.end method

.method public abstract showDoneToast(I)V
.end method

.method public abstract updateKeyguardIconColor(I)V
.end method

.method public abstract updateTwoPhoneIcons()V
.end method

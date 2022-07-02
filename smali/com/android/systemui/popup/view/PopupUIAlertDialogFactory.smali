.class public Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;
.super Ljava/lang/Object;
.source "PopupUIAlertDialogFactory.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDismissDialog:Ljava/lang/Runnable;

.field private mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

.field private mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

.field private mShowingDialog:Ljava/lang/Runnable;

.field private mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/popup/util/PopupUIUtil;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;Lcom/android/systemui/popup/util/DisplayManagerWrapper;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$1;-><init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)V

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mShowingDialog:Ljava/lang/Runnable;

    .line 109
    new-instance v0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$2;-><init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)V

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDismissDialog:Ljava/lang/Runnable;

    .line 31
    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    .line 33
    iput-object p3, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 34
    iput-object p4, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    .line 35
    iput-object p5, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    return-object p0
.end method

.method private initializeDialog()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz v0, :cond_1

    .line 41
    invoke-interface {v0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    invoke-interface {v0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    :cond_1
    return-void
.end method


# virtual methods
.method public getDataConnectionDialog(IZLandroid/app/PendingIntent;)Lcom/android/systemui/popup/view/PopupUIAlertDialog;
    .locals 10

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->initializeDialog()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 64
    :cond_0
    new-instance p1, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;

    iget-object p2, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V

    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    invoke-virtual {v0}, Lcom/android/systemui/popup/util/PopupUIUtil;->isCellularDataAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 53
    iget-object p0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string p1, "PopupUIAlertDialogFactory"

    const-string p2, "Attempt mobile data connection is blocked by Knox"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 60
    :cond_2
    new-instance v0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;

    iget-object v3, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iget-object v5, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mShowingDialog:Ljava/lang/Runnable;

    iget-object v6, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDismissDialog:Ljava/lang/Runnable;

    move-object v2, v0

    move v7, p1

    move v8, p2

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Ljava/lang/Runnable;Ljava/lang/Runnable;IZLandroid/app/PendingIntent;)V

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    goto :goto_0

    .line 68
    :cond_3
    iput-object v1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    .line 72
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    return-object p0
.end method

.method public getOverheatWarningDialog(Ljava/lang/String;ZZ)Lcom/android/systemui/popup/view/PopupUIAlertDialog;
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->initializeDialog()V

    const-string v0, "SSRM"

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 78
    new-instance p1, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;

    iget-object p2, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V

    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSimTrayDialog(I)Lcom/android/systemui/popup/view/PopupUIAlertDialog;
    .locals 3

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->initializeDialog()V

    .line 86
    new-instance v0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;

    iget-object v1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;I)V

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    return-object v0
.end method

.method public getSimTrayProtectionDialog(IZI)Lcom/android/systemui/popup/view/PopupUIAlertDialog;
    .locals 8

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->initializeDialog()V

    .line 98
    new-instance v7, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    iget-object v1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iget-object v3, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    move-object v0, v7

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/DisplayManagerWrapper;IZI)V

    iput-object v7, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    return-object v7
.end method

.method public getSimTrayReverseProtectionDialog(IZI)Lcom/android/systemui/popup/view/PopupUIAlertDialog;
    .locals 8

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->initializeDialog()V

    .line 92
    new-instance v7, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;

    iget-object v1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iget-object v3, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    move-object v0, v7

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/DisplayManagerWrapper;IZI)V

    iput-object v7, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    return-object v7
.end method

.class public Lcom/android/systemui/popup/view/MWOverheatWarningDialog;
.super Ljava/lang/Object;
.source "MWOverheatWarningDialog.java"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 21
    new-instance p1, Lcom/android/systemui/popup/data/MWOverheatWarningData;

    invoke-direct {p1}, Lcom/android/systemui/popup/data/MWOverheatWarningData;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->createDialog(Lcom/android/systemui/popup/data/MWOverheatWarningData;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private createDialog(Lcom/android/systemui/popup/data/MWOverheatWarningData;)Landroid/app/AlertDialog;
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/popup/data/MWOverheatWarningData;->getTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/popup/data/MWOverheatWarningData;->getBody()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/popup/data/MWOverheatWarningData;->getPButton()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 53
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 54
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 55
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 56
    invoke-virtual {v2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    .line 59
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const-string v0, "MWOverheatWarningDialog"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p1, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d8

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 62
    iget-object p0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    return p0
.end method

.method public show()V
    .locals 2

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->dismiss()V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    iget-object p0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v0, "MWOverheatWarningDialog"

    const-string v1, "BadTokenException occurs. The dialog show will be ignored."

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.class public Lcom/android/systemui/popup/view/DataConnectionErrorDialog;
.super Ljava/lang/Object;
.source "DataConnectionErrorDialog.java"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;


# direct methods
.method public static synthetic $r8$lambda$pXIxtmXDtqpSlUIjYRalbkRo2wE(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->lambda$getPButtonClickListener$0(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Ljava/lang/Runnable;Ljava/lang/Runnable;IZLandroid/app/PendingIntent;)V
    .locals 7

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 24
    new-instance v1, Lcom/android/systemui/popup/data/DataConnectionErrorData;

    invoke-direct {v1, p2}, Lcom/android/systemui/popup/data/DataConnectionErrorData;-><init>(Lcom/android/systemui/basic/util/LogWrapper;)V

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->createDialog(Lcom/android/systemui/popup/data/DataConnectionErrorData;Ljava/lang/Runnable;Ljava/lang/Runnable;IZLandroid/app/PendingIntent;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private createDialog(Lcom/android/systemui/popup/data/DataConnectionErrorData;Ljava/lang/Runnable;Ljava/lang/Runnable;IZLandroid/app/PendingIntent;)Landroid/app/AlertDialog;
    .locals 6

    .line 53
    invoke-virtual {p1, p4}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getTitle(I)I

    move-result p2

    const/4 p3, -0x1

    const/4 v0, 0x0

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1, p4}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getTitle(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 54
    :goto_0
    invoke-virtual {p1, p4}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getBody(I)I

    move-result v1

    if-eq v1, p3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, p4}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getBody(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 55
    :goto_1
    invoke-virtual {p1, p4, p5}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getPButton(IZ)I

    move-result v2

    if-eq v2, p3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1, p4, p5}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getPButton(IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v0

    .line 56
    :goto_2
    invoke-virtual {p1, p4, p5}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getNButton(IZ)I

    move-result v3

    if-eq v3, p3, :cond_3

    iget-object p3, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p1, p4, p5}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getNButton(IZ)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_3
    move-object p3, v0

    .line 58
    :goto_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 59
    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 60
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->getPButtonClickListener(Lcom/android/systemui/popup/data/DataConnectionErrorData;IZLandroid/app/PendingIntent;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_4

    .line 63
    invoke-virtual {v3, p3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    :cond_4
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    .line 67
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const-string p2, "DataConnectionErrorDialog"

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d8

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 70
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private getPButtonClickListener(Lcom/android/systemui/popup/data/DataConnectionErrorData;IZLandroid/app/PendingIntent;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getPButtonClickListener(Landroid/content/Context;IZLandroid/app/PendingIntent;)Ljava/lang/Runnable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_0
    new-instance p1, Lcom/android/systemui/popup/view/DataConnectionErrorDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    return-object p1
.end method

.method private static synthetic lambda$getPButtonClickListener$0(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 78
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v1, "DataConnectionErrorDialog"

    const-string v2, "dismiss previous dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    return p0
.end method

.method public show()V
    .locals 2

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->dismiss()V

    .line 32
    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v0, "DataConnectionErrorDialog"

    const-string v1, "BadTokenException occurs. The dialog show will be ignored."

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

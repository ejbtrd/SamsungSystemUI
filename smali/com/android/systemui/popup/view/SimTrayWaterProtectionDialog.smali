.class public Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;
.super Ljava/lang/Object;
.source "SimTrayWaterProtectionDialog.java"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mType:I


# direct methods
.method public static synthetic $r8$lambda$K1YQrd84Cc7vwkbKT917j2s75to(Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->lambda$createDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 29
    iput p3, p0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->mType:I

    .line 30
    new-instance p1, Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;

    invoke-direct {p1}, Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->createDialog(Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private createDialog(Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;)Landroid/app/AlertDialog;
    .locals 6

    .line 58
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;->getTitleMessage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->mType:I

    invoke-virtual {p1, v2}, Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;->getBodyMessage(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;->getBodyImage()I

    move-result p1

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 62
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v2, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 63
    sget v4, Lcom/android/systemui/R$layout;->sim_card_tray_water_protection_dialog:I

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 65
    sget v4, Lcom/android/systemui/R$id;->sim_card_tray_water_protection_dialog_body_image:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 66
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 69
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 71
    sget p1, Lcom/android/systemui/R$id;->sim_card_tray_water_protection_dialog_body_message:I

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 72
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->yes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 78
    new-instance v0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    return-object p0
.end method

.method private synthetic lambda$createDialog$0(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public show()V
    .locals 2

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->dismiss()V

    .line 38
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayWaterProtectionDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v0, "SimTrayDialog"

    const-string v1, "BadTokenException occurs. The dialog show will be ignored."

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

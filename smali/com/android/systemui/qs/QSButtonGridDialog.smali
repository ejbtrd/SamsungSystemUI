.class public Lcom/android/systemui/qs/QSButtonGridDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "QSButtonGridDialog.java"


# static fields
.field public static final THEME_RES_ID:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRootLayout:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$F4igv5oh4IWA_nynoAteqQ60DJ4(Lcom/android/systemui/qs/QSButtonGridDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSButtonGridDialog;->lambda$initButtonGridDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fgv3YdfDghC8pd4GdniYD44eTNE(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/QSButtonGridDialog;->lambda$updateSeekBar$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 20
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_Alert:I

    sput v0, Lcom/android/systemui/qs/QSButtonGridDialog;->THEME_RES_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    sget v0, Lcom/android/systemui/qs/QSButtonGridDialog;->THEME_RES_ID:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSButtonGridDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/qs/QSButtonGridDialog;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/android/systemui/qs/QSButtonGridDialog;->initButtonGridDialog()V

    return-void
.end method

.method private initButtonGridDialog()V
    .locals 2

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/QSButtonGridDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->qs_button_grid_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    invoke-direct {p0}, Lcom/android/systemui/qs/QSButtonGridDialog;->updateRootLayout()V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/qs/QSButtonGridDialog;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSButtonGridDialog;->updateSeekBar(Landroid/view/ViewGroup;)V

    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/QSButtonGridDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->sec_qs_detail_items_side_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSButtonGridDialog;->updateMargins(I)V

    .line 41
    sget v0, Lcom/android/systemui/R$string;->ok:I

    new-instance v1, Lcom/android/systemui/qs/QSButtonGridDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSButtonGridDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSButtonGridDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$initButtonGridDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$updateSeekBar$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private updateMargins(I)V
    .locals 6

    .line 71
    iget-object v1, p0, Lcom/android/systemui/qs/QSButtonGridDialog;->mRootLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    move v2, p1

    move v3, p1

    move v4, p1

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    return-void
.end method

.method private updateRootLayout()V
    .locals 3

    .line 45
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/QSButtonGridDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSButtonGridDialog;->mRootLayout:Landroid/widget/LinearLayout;

    .line 46
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSeekBar(Landroid/view/ViewGroup;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSButtonGridDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->qs_button_grid_dialog:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 52
    sget v0, Lcom/android/systemui/R$id;->grid_slider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 53
    new-instance v0, Lcom/android/systemui/qs/QSButtonGridDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSButtonGridDialog$1;-><init>(Lcom/android/systemui/qs/QSButtonGridDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const/4 p0, 0x2

    .line 65
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 66
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    const/4 v0, 0x1

    const-string v1, "qs_button_grid"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 67
    sget-object p0, Lcom/android/systemui/qs/QSButtonGridDialog$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/qs/QSButtonGridDialog$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

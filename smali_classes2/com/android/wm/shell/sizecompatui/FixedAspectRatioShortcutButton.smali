.class public Lcom/android/wm/shell/sizecompatui/FixedAspectRatioShortcutButton;
.super Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;
.source "FixedAspectRatioShortcutButton.java"


# instance fields
.field private mTargetPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.APP_ASPECT_RATIO_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/FixedAspectRatioShortcutButton;->mTargetPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 69
    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/FixedAspectRatioShortcutButton;->mTargetPackageName:Ljava/lang/String;

    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ":settings:show_fragment_args"

    .line 70
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 59
    sget v0, Lcom/android/wm/shell/R$id;->fixed_aspect_ratio_shortcut_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 60
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

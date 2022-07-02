.class Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;
.super Ljava/lang/Object;
.source "SimTrayProtectionDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/popup/view/SimTrayProtectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->access$000(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {v0, v1}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->access$002(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->access$100(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v1}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->access$000(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->access$000(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 131
    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v1}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->access$100(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->sim_card_tray_protection_dialog_left_right_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v2}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->access$100(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->sim_card_tray_protection_dialog_start_end_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 133
    iget-object v3, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v3}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->access$200(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    .line 134
    iget-object v4, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v4}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->access$300(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)I

    move-result v4

    if-eq v4, v0, :cond_2

    .line 135
    iget-object v4, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v4, v0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->access$302(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;I)I

    if-ge v0, v3, :cond_1

    .line 137
    iget-object v3, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v3}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->access$200(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->access$200(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v1}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->access$100(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->sim_card_tray_protection_dialog_body_image_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 141
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {p0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->access$200(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_2
    return-void
.end method

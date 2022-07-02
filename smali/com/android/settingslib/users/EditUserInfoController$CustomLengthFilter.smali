.class Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "EditUserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/users/EditUserInfoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomLengthFilter"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/android/settingslib/users/EditUserInfoController;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/users/EditUserInfoController;Landroid/app/Activity;I)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/EditUserInfoController;

    .line 257
    invoke-direct {p0, p3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 258
    iput-object p2, p0, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    .line 263
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 266
    iget-object p4, p0, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-static {p4}, Lcom/android/settingslib/users/EditUserInfoController;->access$100(Lcom/android/settingslib/users/EditUserInfoController;)Landroid/widget/Toast;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 267
    iget-object p4, p0, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-static {p4}, Lcom/android/settingslib/users/EditUserInfoController;->access$100(Lcom/android/settingslib/users/EditUserInfoController;)Landroid/widget/Toast;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-static {p4}, Lcom/android/settingslib/users/EditUserInfoController;->access$100(Lcom/android/settingslib/users/EditUserInfoController;)Landroid/widget/Toast;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->isShown()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 268
    :cond_0
    iget-object p4, p0, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-static {p4}, Lcom/android/settingslib/users/EditUserInfoController;->access$100(Lcom/android/settingslib/users/EditUserInfoController;)Landroid/widget/Toast;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/Toast;->cancel()V

    .line 271
    :cond_1
    iget-object p4, p0, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/EditUserInfoController;

    iget-object p5, p0, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    sget v0, Lcom/android/settingslib/R$string;->max_byte_error:I

    invoke-virtual {p6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p6

    const/4 v0, 0x0

    invoke-static {p5, p6, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/android/settingslib/users/EditUserInfoController;->access$102(Lcom/android/settingslib/users/EditUserInfoController;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 272
    iget-object p0, p0, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-static {p0}, Lcom/android/settingslib/users/EditUserInfoController;->access$100(Lcom/android/settingslib/users/EditUserInfoController;)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 274
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    sub-int/2addr p3, p2

    if-ge p0, p3, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p1, ""

    :cond_2
    return-object p1
.end method

.class Lcom/samsung/android/edgelighting/view/MorphView$1;
.super Ljava/lang/Object;
.source "MorphView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/MorphView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/MorphView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/MorphView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$1;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 128
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$1;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    iget-boolean v0, p1, Lcom/samsung/android/edgelighting/view/AbsToastView;->mIsHiding:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/samsung/android/edgelighting/view/MorphView;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, " Do not copy when hiding animation"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 132
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/edgelighting/view/MorphView;->access$100(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 133
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$1;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView$1;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$100(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/edgelighting/utils/Utils;->doCopyCode(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$1;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/view/MorphView;->access$200(Lcom/samsung/android/edgelighting/view/MorphView;)Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 135
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$1;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/view/MorphView;->access$200(Lcom/samsung/android/edgelighting/view/MorphView;)Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView$1;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$100(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;->onCopyCertificationCode(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-static {}, Lcom/samsung/android/edgelighting/view/MorphView;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " code text is null. So can not copy : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->getVerifyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

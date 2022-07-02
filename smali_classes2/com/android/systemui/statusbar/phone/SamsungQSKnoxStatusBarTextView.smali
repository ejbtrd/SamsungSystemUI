.class public Lcom/android/systemui/statusbar/phone/SamsungQSKnoxStatusBarTextView;
.super Landroid/widget/TextView;
.source "SamsungQSKnoxStatusBarTextView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# direct methods
.method public static synthetic $r8$lambda$U61TEL3RyzzgHL3Pp1vQ4LJu55g(Lcom/android/systemui/statusbar/phone/SamsungQSKnoxStatusBarTextView;Landroid/graphics/Rect;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SamsungQSKnoxStatusBarTextView;->lambda$onDarkChanged$0(Landroid/graphics/Rect;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic lambda$onDarkChanged$0(Landroid/graphics/Rect;I)V
    .locals 0

    .line 63
    invoke-static {p1, p0, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    const v0, -0x12000001

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 63
    new-instance p2, Lcom/android/systemui/statusbar/phone/SamsungQSKnoxStatusBarTextView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/statusbar/phone/SamsungQSKnoxStatusBarTextView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/SamsungQSKnoxStatusBarTextView;Landroid/graphics/Rect;I)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 57
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 58
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method

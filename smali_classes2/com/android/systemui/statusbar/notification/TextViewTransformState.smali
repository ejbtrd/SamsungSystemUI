.class public Lcom/android/systemui/statusbar/notification/TextViewTransformState;
.super Lcom/android/systemui/statusbar/notification/TransformState;
.source "TextViewTransformState.java"


# static fields
.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Lcom/android/systemui/statusbar/notification/TextViewTransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    return-void
.end method

.method private getEllipsisCount()I
    .locals 2

    .line 131
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 136
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private hasSameSpans(Lcom/android/systemui/statusbar/notification/TextViewTransformState;)Z
    .locals 9

    .line 68
    const-class v0, Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    instance-of v1, p0, Landroid/text/Spanned;

    .line 69
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    instance-of v2, v2, Landroid/text/Spanned;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 76
    :cond_1
    check-cast p0, Landroid/text/Spanned;

    .line 77
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    invoke-interface {p0, v3, v1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 78
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    check-cast p1, Landroid/text/Spanned;

    .line 79
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v4

    invoke-interface {p1, v3, v4, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 80
    array-length v4, v1

    array-length v5, v0

    if-eq v4, v5, :cond_2

    return v3

    :cond_2
    move v4, v3

    .line 83
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_6

    .line 84
    aget-object v5, v1, v4

    .line 85
    aget-object v6, v0, v4

    .line 86
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    return v3

    .line 89
    :cond_3
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p1, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 90
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v3

    :cond_6
    return v2
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    .locals 1

    .line 143
    sget-object v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    if-eqz v0, :cond_0

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getContentHeight()I
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result p0

    return p0
.end method

.method protected getContentWidth()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 116
    invoke-virtual {v0, p0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p0

    float-to-int p0, p0

    return p0

    .line 118
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getContentWidth()I

    move-result p0

    return p0
.end method

.method public initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    .line 41
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    return-void
.end method

.method public recycle()V
    .locals 1

    .line 152
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 153
    sget-object v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method protected reset()V
    .locals 1

    .line 158
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    return-void
.end method

.method protected sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 4

    .line 46
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 49
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 50
    check-cast p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    .line 51
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    instance-of v3, v0, Landroid/widget/Chronometer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    instance-of v3, v3, Landroid/widget/Chronometer;

    if-eqz v3, :cond_1

    return v1

    .line 56
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v0

    .line 58
    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    .line 60
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->hasSameSpans(Lcom/android/systemui/statusbar/notification/TextViewTransformState;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    return v2
.end method

.method protected transformScale(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 4

    .line 99
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 107
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v0

    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getContentHeight()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getContentHeight()I

    move-result p1

    if-eq p0, p1, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

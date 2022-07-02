.class public Lcom/android/systemui/statusbar/policy/QSShortenDate;
.super Lcom/android/systemui/statusbar/policy/QSDate;
.source "QSShortenDate.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsShortenEnabled:Z

.field private mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QSDate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 33
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/QSShortenDate;->mIsShortenEnabled:Z

    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSShortenDate;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public notifyTimeChanged(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSShortenDate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSShortenDate;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ko"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QSShortenDate;->mIsShortenEnabled:Z

    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->getShortDateText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->getDateText()Ljava/lang/String;

    move-result-object p1

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSDate;->mLastText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSDate;->mLastText:Ljava/lang/String;

    :cond_3
    return-void
.end method

.class public Lcom/android/systemui/statusbar/KshChildViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "KshChildViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;,
        Lcom/android/systemui/statusbar/KshChildViewAdapter$StringDrawableContainer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultFont:Landroid/graphics/Typeface;

.field private mDefaultIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private mModifierDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mModifierList:[I

.field private mModifierNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialCharacterDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialCharacterNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 32
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mModifierList:[I

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    :try_start_0
    const-string p1, "/system/fonts/Roboto-Medium.ttf"

    .line 56
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mDefaultFont:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "KshChildViewAdapter"

    const-string p1, "/system/fonts/Roboto-Medium.ttf is not enabled"

    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x10000
        0x1000
        0x2
        0x1
        0x4
        0x8
        0x10
    .end array-data
.end method

.method private getHumanReadableModifiers(Landroid/view/KeyboardShortcutInfo;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyboardShortcutInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/KshChildViewAdapter$StringDrawableContainer;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getModifiers()I

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 147
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mModifierList:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 148
    aget v2, v2, v1

    and-int v3, p1, v2

    if-eqz v3, :cond_1

    .line 150
    new-instance v3, Lcom/android/systemui/statusbar/KshChildViewAdapter$StringDrawableContainer;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mModifierNames:Landroid/util/SparseArray;

    .line 151
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mModifierDrawables:Landroid/util/SparseArray;

    .line 152
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/KshChildViewAdapter$StringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 150
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    not-int v2, v2

    and-int/2addr p1, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    return-object v0
.end method

.method private getHumanReadableShortcutKeys(Landroid/view/KeyboardShortcutInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyboardShortcutInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/KshChildViewAdapter$StringDrawableContainer;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KshChildViewAdapter;->getHumanReadableModifiers(Landroid/view/KeyboardShortcutInfo;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    move-result v2

    if-lez v2, :cond_1

    .line 171
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 173
    iget-object v1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 174
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mSpecialCharacterNames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mSpecialCharacterNames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 176
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mSpecialCharacterNames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v2

    if-nez v2, :cond_4

    return-object v0

    .line 182
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v2

    if-eqz v2, :cond_5

    .line 184
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 186
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result p0

    if-eqz p0, :cond_7

    .line 188
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_6

    .line 196
    new-instance p1, Lcom/android/systemui/statusbar/KshChildViewAdapter$StringDrawableContainer;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/statusbar/KshChildViewAdapter$StringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const-string p0, "KshChildViewAdapter"

    const-string p1, "Keyboard Shortcut does not have a text representation, skipping."

    .line 198
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0

    :cond_7
    return-object v1
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KshChildViewAdapter;->onBindViewHolder(Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;I)V
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/KeyboardShortcutInfo;

    .line 90
    invoke-static {p1}, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->access$000(Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    .line 91
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 94
    iget-object v3, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    sget v1, Lcom/android/systemui/R$drawable;->ksh_no_default_app_background:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 97
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->access$100(Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-static {p1}, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->access$200(Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 107
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/KshChildViewAdapter;->getHumanReadableShortcutKeys(Landroid/view/KeyboardShortcutInfo;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    move v0, v2

    .line 111
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 112
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/KshChildViewAdapter$StringDrawableContainer;

    .line 113
    iget-object v3, v1, Lcom/android/systemui/statusbar/KshChildViewAdapter$StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 114
    iget-object v3, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/systemui/R$layout;->samsung_keyboard_shortcuts_key_icon_view:I

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 116
    iget-object v1, v1, Lcom/android/systemui/statusbar/KshChildViewAdapter$StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 118
    :cond_2
    iget-object v3, v1, Lcom/android/systemui/statusbar/KshChildViewAdapter$StringDrawableContainer;->mString:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 119
    iget-object v3, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/systemui/R$layout;->samsung_keyboard_shortcuts_key_view:I

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 122
    iget-object v4, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mDefaultFont:Landroid/graphics/Typeface;

    if-eqz v4, :cond_3

    .line 123
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    :cond_3
    iget-object v1, v1, Lcom/android/systemui/statusbar/KshChildViewAdapter$StringDrawableContainer;->mString:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const-string p0, "KshChildViewAdapter"

    const-string p1, "Keyboard Shortcut contains unsupported keys, skipping."

    .line 131
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KshChildViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;
    .locals 2

    .line 80
    iget-object p2, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/systemui/R$layout;->samsung_keyboard_shortcut_item_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 82
    new-instance p2, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;-><init>(Lcom/android/systemui/statusbar/KshChildViewAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/view/KeyCharacterMap;Landroid/view/KeyCharacterMap;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/view/KeyCharacterMap;",
            "Landroid/view/KeyCharacterMap;",
            "Ljava/util/HashMap<",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mData:Ljava/util/List;

    .line 68
    iput-object p2, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 69
    iput-object p3, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mModifierNames:Landroid/util/SparseArray;

    .line 70
    iput-object p4, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 71
    iput-object p5, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mModifierDrawables:Landroid/util/SparseArray;

    .line 72
    iput-object p6, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 73
    iput-object p7, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 74
    iput-object p8, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mDefaultIcons:Ljava/util/HashMap;

    return-void
.end method

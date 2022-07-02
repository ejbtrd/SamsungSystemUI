.class public Lcom/android/systemui/statusbar/KshViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "KshViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;",
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
            "Landroid/view/KeyboardShortcutGroup;",
            ">;"
        }
    .end annotation
.end field

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

.field private mLabels:[Ljava/lang/String;

.field private mMaxColumn:I

.field private mModifierDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mLabels:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KshViewAdapter;->onBindViewHolder(Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;I)V
    .locals 11

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/KeyboardShortcutGroup;

    .line 96
    iget-object v0, p1, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;->subHeader:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/KeyboardShortcutGroup;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/KshChildViewAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/KshChildViewAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    .line 99
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutGroup;->getItems()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mSpecialCharacterNames:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mModifierNames:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    iget-object v7, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mModifierDrawables:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    iget-object v9, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    iget-object v10, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mDefaultIcons:Ljava/util/HashMap;

    move-object v2, v0

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/statusbar/KshChildViewAdapter;->setData(Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/view/KeyCharacterMap;Landroid/view/KeyCharacterMap;Ljava/util/HashMap;)V

    .line 104
    iget-object p2, p1, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 105
    iget-object p0, p1, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KshViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;
    .locals 2

    .line 81
    iget-object p2, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/systemui/R$layout;->samsung_keyboard_shortcut_group_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 85
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mMaxColumn:I

    div-int/2addr p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    new-instance p1, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;-><init>(Lcom/android/systemui/statusbar/KshViewAdapter;Landroid/view/View;)V

    return-object p1
.end method

.method public setData(Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/view/KeyCharacterMap;Landroid/view/KeyCharacterMap;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
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

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mData:Ljava/util/List;

    .line 53
    iput-object p2, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 54
    iput-object p3, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mModifierNames:Landroid/util/SparseArray;

    .line 55
    iput-object p4, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 56
    iput-object p5, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mModifierDrawables:Landroid/util/SparseArray;

    .line 57
    iput-object p6, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 58
    iput-object p7, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 59
    iput-object p8, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mDefaultIcons:Ljava/util/HashMap;

    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 62
    new-array p2, p1, [Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mLabels:[Ljava/lang/String;

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    .line 65
    iget-object p4, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/KeyboardShortcutGroup;

    invoke-virtual {p4}, Landroid/view/KeyboardShortcutGroup;->getLabel()Ljava/lang/CharSequence;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    add-int/lit8 p5, p1, -0x2

    if-lt p3, p5, :cond_0

    const-string p5, "\\s+"

    .line 68
    invoke-virtual {p4, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    aget-object p4, p4, p2

    .line 70
    :cond_0
    iget-object p5, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mLabels:[Ljava/lang/String;

    aput-object p4, p5, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMaxColumn(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mMaxColumn:I

    return-void
.end method

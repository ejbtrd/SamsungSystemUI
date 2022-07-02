.class public Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "KshChildViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KshChildViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private iconView:Landroid/widget/ImageView;

.field private keywordView:Landroid/widget/TextView;

.field private shortcutKeysContainer:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/android/systemui/statusbar/KshChildViewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KshChildViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->this$0:Lcom/android/systemui/statusbar/KshChildViewAdapter;

    .line 223
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 224
    sget p1, Lcom/android/systemui/R$id;->keyboard_shortcuts_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 225
    sget p1, Lcom/android/systemui/R$id;->keyboard_shortcuts_keyword:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->keywordView:Landroid/widget/TextView;

    .line 226
    sget p1, Lcom/android/systemui/R$id;->keyboard_shortcuts_item_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->shortcutKeysContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->keywordView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->shortcutKeysContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

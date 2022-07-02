.class Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder;
.super Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;
.source "SubscreenNotificationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HideContenNotificationViewHolder"
.end annotation


# instance fields
.field private mAppName:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V
    .locals 1

    .line 277
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 278
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;-><init>(Landroid/view/View;)V

    .line 279
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 280
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 282
    sget v0, Lcom/android/systemui/R$id;->hide_content_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 283
    sget v0, Lcom/android/systemui/R$id;->hide_content_app_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder;->mAppName:Landroid/widget/TextView;

    .line 285
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->access$100(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->setFirstChildTopMargin(Landroid/content/Context;)V

    .line 288
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method onBind(Lcom/android/systemui/statusbar/LockscreenNotificationInfo;)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object p1

    .line 298
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->addRecyclerViewItemView(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->updateKnoxIcon()V

    .line 303
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->updateTitleKnoxLayout(Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

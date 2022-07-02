.class Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;
.super Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;
.source "SubscreenNotificationGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HideContenNotificationViewHolder"
.end annotation


# instance fields
.field private mAppName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V
    .locals 1

    .line 161
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 162
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;-><init>(Landroid/view/View;)V

    .line 163
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 164
    sget v0, Lcom/android/systemui/R$id;->hide_content_app_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;->mAppName:Landroid/widget/TextView;

    .line 165
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method onBind(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object p1

    .line 175
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {p1, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getContentHiddenText(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->addRecyclerViewItemView(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V

    return-void
.end method

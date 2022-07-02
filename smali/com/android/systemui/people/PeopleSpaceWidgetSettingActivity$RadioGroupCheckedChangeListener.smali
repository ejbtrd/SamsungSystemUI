.class Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$RadioGroupCheckedChangeListener;
.super Ljava/lang/Object;
.source "PeopleSpaceWidgetSettingActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioGroupCheckedChangeListener"
.end annotation


# instance fields
.field private final mBlackButton:Landroid/widget/RadioButton;

.field private final mWhiteButton:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$RadioGroupCheckedChangeListener;->this$0:Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p2, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$RadioGroupCheckedChangeListener;->mWhiteButton:Landroid/widget/RadioButton;

    .line 232
    iput-object p3, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$RadioGroupCheckedChangeListener;->mBlackButton:Landroid/widget/RadioButton;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 237
    sget p1, Lcom/android/systemui/R$id;->radio_white:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$RadioGroupCheckedChangeListener;->this$0:Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;

    sget p2, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->THEME_WHITE:I

    invoke-static {p1, p2}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->access$002(Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;I)I

    .line 239
    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$RadioGroupCheckedChangeListener;->mWhiteButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 241
    :cond_0
    sget p1, Lcom/android/systemui/R$id;->radio_black:I

    if-ne p2, p1, :cond_1

    .line 242
    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$RadioGroupCheckedChangeListener;->this$0:Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;

    sget p2, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->THEME_BLACK:I

    invoke-static {p1, p2}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->access$002(Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;I)I

    .line 243
    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$RadioGroupCheckedChangeListener;->mBlackButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 245
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$RadioGroupCheckedChangeListener;->this$0:Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->access$100(Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;)V

    return-void
.end method

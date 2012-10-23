.class public Landroid/widget/EditableListView;
.super Landroid/widget/ListView;
.source "EditableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EditableListView$DropDownMenu;,
        Landroid/widget/EditableListView$EditableModeCallback;,
        Landroid/widget/EditableListView$EditableModeWrapper;,
        Landroid/widget/EditableListView$EditableListViewListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EditableListView"


# instance fields
.field private mIsUpdateBatchChecked:Z

.field private mKeepEditModeIfNoItemChecked:Z

.field private mMultiChoiceModeListener:Landroid/widget/EditableListView$EditableListViewListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mShowCheckBoxInNoneEditMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Landroid/widget/EditableListView$1;

    invoke-direct {v0, p0}, Landroid/widget/EditableListView$1;-><init>(Landroid/widget/EditableListView;)V

    iput-object v0, p0, Landroid/widget/EditableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    new-instance v0, Landroid/widget/EditableListView$1;

    invoke-direct {v0, p0}, Landroid/widget/EditableListView$1;-><init>(Landroid/widget/EditableListView;)V

    iput-object v0, p0, Landroid/widget/EditableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 42
    return-void
.end method

.method static synthetic access$000(Landroid/widget/EditableListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/EditableListView;->enterEditModeInner()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/EditableListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Landroid/widget/EditableListView;->mIsUpdateBatchChecked:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/EditableListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Landroid/widget/EditableListView;->mKeepEditModeIfNoItemChecked:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/EditableListView;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/EditableListView;->isValidPos(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/widget/EditableListView;)Landroid/widget/EditableListView$EditableListViewListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeListener:Landroid/widget/EditableListView$EditableListViewListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/EditableListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/EditableListView;->updateOnScreenCheckedViews()V

    return-void
.end method

.method private enterEditModeInner()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_9

    .line 60
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/EditableListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 62
    :cond_9
    return-void
.end method

.method private getEnabledCount()I
    .registers 7

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/widget/EditableListView;->getHeaderViewsCount()I

    move-result v3

    .local v3, start:I
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getFooterViewsCount()I

    move-result v5

    sub-int v1, v4, v5

    .line 87
    .local v1, end:I
    const/4 v0, 0x0

    .line 88
    .local v0, count:I
    move v2, v3

    .local v2, i:I
    :goto_12
    if-ge v2, v1, :cond_21

    .line 89
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 88
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 93
    :cond_21
    return v0
.end method

.method private isValidPos(I)Z
    .registers 6
    .parameter "position"

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/widget/EditableListView;->getHeaderViewsCount()I

    move-result v1

    .line 192
    .local v1, numHeaders:I
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 193
    .local v0, count:I
    if-lt p1, v1, :cond_16

    if-ge p1, v0, :cond_16

    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private updateBatchChecked(Z)V
    .registers 11
    .parameter "checked"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 133
    iget-object v4, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_f

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_f

    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_10

    .line 173
    :cond_f
    :goto_f
    return-void

    .line 137
    :cond_10
    iput-boolean v1, p0, Landroid/widget/EditableListView;->mIsUpdateBatchChecked:Z

    .line 138
    invoke-virtual {p0}, Landroid/widget/EditableListView;->getHeaderViewsCount()I

    move-result v3

    .line 139
    .local v3, numHeaders:I
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getFooterViewsCount()I

    move-result v6

    sub-int v0, v4, v6

    .line 140
    .local v0, count:I
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_3c

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 142
    .local v1, hasStableIds:Z
    :goto_2e
    move v2, v3

    .local v2, i:I
    :goto_2f
    if-ge v2, v0, :cond_82

    .line 143
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 142
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .end local v1           #hasStableIds:Z
    .end local v2           #i:I
    :cond_3c
    move v1, v5

    .line 140
    goto :goto_2e

    .line 147
    .restart local v1       #hasStableIds:Z
    .restart local v2       #i:I
    :cond_3e
    if-eqz p1, :cond_67

    .line 148
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_39

    .line 151
    iget v4, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 158
    :goto_4e
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 159
    if-eqz v1, :cond_39

    .line 160
    if-eqz p1, :cond_76

    .line 161
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_39

    .line 153
    :cond_67
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 156
    iget v4, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_4e

    .line 163
    :cond_76
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_39

    .line 168
    :cond_82
    iget-object v4, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    check-cast v4, Landroid/widget/EditableListView$EditableModeWrapper;

    iget-object v6, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4, v6, p1}, Landroid/widget/EditableListView$EditableModeWrapper;->onBatchCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 171
    invoke-direct {p0}, Landroid/widget/EditableListView;->updateOnScreenCheckedViews()V

    .line 172
    iput-boolean v5, p0, Landroid/widget/EditableListView;->mIsUpdateBatchChecked:Z

    goto/16 :goto_f
.end method

.method private updateCheckBoxState(Landroid/widget/CheckBox;I)V
    .registers 4
    .parameter "checkBox"
    .parameter "position"

    .prologue
    .line 227
    if-eqz p1, :cond_1f

    invoke-direct {p0, p2}, Landroid/widget/EditableListView;->isValidPos(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 228
    invoke-virtual {p0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Landroid/widget/EditableListView;->mShowCheckBoxInNoneEditMode:Z

    if-eqz v0, :cond_20

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 232
    :cond_1f
    return-void

    .line 228
    :cond_20
    const/16 v0, 0x8

    goto :goto_13
.end method

.method private updateOnScreenCheckedViews()V
    .registers 8

    .prologue
    .line 216
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 217
    .local v3, firstPos:I
    invoke-virtual {p0}, Landroid/widget/EditableListView;->getChildCount()I

    move-result v2

    .line 218
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7
    if-ge v4, v2, :cond_1e

    .line 219
    invoke-virtual {p0, v4}, Landroid/widget/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 220
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    .line 221
    .local v5, position:I
    const v6, 0x1020001

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 222
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-direct {p0, v0, v5}, Landroid/widget/EditableListView;->updateCheckBoxState(Landroid/widget/CheckBox;I)V

    .line 218
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 224
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #child:Landroid/view/View;
    .end local v5           #position:I
    :cond_1e
    return-void
.end method


# virtual methods
.method public checkAll()V
    .registers 2

    .prologue
    .line 183
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/EditableListView;->updateBatchChecked(Z)V

    .line 184
    return-void
.end method

.method public checkNothing()V
    .registers 2

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/EditableListView;->updateBatchChecked(Z)V

    .line 188
    return-void
.end method

.method public enterEditMode()V
    .registers 7

    .prologue
    .line 45
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_5

    .line 56
    :cond_4
    :goto_4
    return-void

    .line 48
    :cond_5
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/EditableListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 49
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeListener:Landroid/widget/EditableListView$EditableListViewListener;

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/EditableListView$EditableListViewListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 51
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_4

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 53
    invoke-virtual {p0}, Landroid/widget/EditableListView;->rememberSyncState()V

    .line 54
    invoke-virtual {p0}, Landroid/widget/EditableListView;->requestLayout()V

    goto :goto_4
.end method

.method public exitEditMode()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 74
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 76
    :cond_9
    return-void
.end method

.method public isAllChecked()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_10

    .line 80
    invoke-direct {p0}, Landroid/widget/EditableListView;->getEnabledCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v2

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    .line 82
    :cond_10
    return v0
.end method

.method public isEditMode()Z
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isItemCheckedById(J)Z
    .registers 5
    .parameter "id"

    .prologue
    .line 97
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 98
    .local v0, pos:Ljava/lang/Integer;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/EditableListView;->isItemChecked(I)Z

    move-result v1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method obtainView(I[Z)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "isScrap"

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 210
    .local v1, view:Landroid/view/View;
    const v2, 0x1020001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 211
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-direct {p0, v0, p1}, Landroid/widget/EditableListView;->updateCheckBoxState(Landroid/widget/CheckBox;I)V

    .line 212
    return-object v1
.end method

.method public setCheckBoxVisiableInNoneEditMode(Z)V
    .registers 2
    .parameter "show"

    .prologue
    .line 69
    iput-boolean p1, p0, Landroid/widget/EditableListView;->mShowCheckBoxInNoneEditMode:Z

    .line 70
    return-void
.end method

.method public setItemChecked(IZ)V
    .registers 4
    .parameter "position"
    .parameter "value"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/widget/EditableListView;->isValidPos(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 178
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 180
    :cond_9
    return-void
.end method

.method public setKeepExitModeIfNoItemChecked(Z)V
    .registers 2
    .parameter "keepEidtMode"

    .prologue
    .line 65
    iput-boolean p1, p0, Landroid/widget/EditableListView;->mKeepEditModeIfNoItemChecked:Z

    .line 66
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 125
    const-string v0, "EditableListView"

    const-string/jumbo v1, "should use setMultiChoiceModeListener(final EditableListViewListener listener)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/EditableListView$EditableListViewListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 113
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_b

    .line 114
    new-instance v0, Landroid/widget/EditableListView$EditableModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/EditableListView$EditableModeWrapper;-><init>(Landroid/widget/EditableListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 116
    :cond_b
    iput-object p1, p0, Landroid/widget/EditableListView;->mMultiChoiceModeListener:Landroid/widget/EditableListView$EditableListViewListener;

    .line 117
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 119
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/EditableListView;->setChoiceMode(I)V

    .line 120
    if-nez p1, :cond_1d

    const/4 v0, 0x0

    :goto_19
    invoke-virtual {p0, v0}, Landroid/widget/EditableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 121
    return-void

    .line 120
    :cond_1d
    iget-object v0, p0, Landroid/widget/EditableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    goto :goto_19
.end method

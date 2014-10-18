use utf8;
package Schema::Result::ProjectFlag;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::ProjectFlag

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<project_flag>

=cut

__PACKAGE__->table("project_flag");

=head1 ACCESSORS

=head2 project_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 flag_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "project_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "flag_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 RELATIONS

=head2 flag

Type: belongs_to

Related object: L<Schema::Result::Flag>

=cut

__PACKAGE__->belongs_to(
  "flag",
  "Schema::Result::Flag",
  { id => "flag_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 project

Type: belongs_to

Related object: L<Schema::Result::Project>

=cut

__PACKAGE__->belongs_to(
  "project",
  "Schema::Result::Project",
  { id => "project_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-10-17 17:02:12
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Od1T3bJx5OY99Bdqn1BhBQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;

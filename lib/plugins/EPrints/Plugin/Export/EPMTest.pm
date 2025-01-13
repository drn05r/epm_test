package EPrints::Plugin::Export::EPMTest;

use EPrints::Plugin::Export::TextFile;

@ISA = ( "EPrints::Plugin::Export::TextFile" );

use strict;

sub new
{
	my( $class, %opts ) = @_;

	my $self = $class->SUPER::new( %opts );

	$self->{name} = "EPM Test";
	$self->{accept} = [ 'dataobj/eprint', 'list/eprint' ];
	$self->{visible} = "all";

	$self->{disable} = 1;
	
	return $self;
}


sub output_dataobj
{
	my( $plugin, $dataobj ) = @_;

	return "This is an EPM test\n";
}
